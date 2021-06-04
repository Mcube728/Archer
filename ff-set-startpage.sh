#!/bin/bash
# Firefox new tab override script.
#
# This script allows a user to set their new tab page
# to a local file. i.e my-cool-startpage.html
#
# See: https://support.mozilla.org/en-US/kb/customizing-firefox-using-autoconfig

# Exit if non-zero status returned.
set -e

# Assumed default directories for Firefox installation.
firefoxDirectories=(
  "/usr/lib/firefox"
  "/usr/lib/firefox-esr"
  "/opt/firefox"
)

# TODO
firefoxPrefDirectories=(
  "defaults/pref"
  "browser/defaults/preferences"
)

# Simple confirmation, any key outside of [yesYES] cancels the script.
confirm() {
  read -r -p "${1:-Do you want to continue?} [y/N] " res
  case "$res" in
    [yY][eE][sS]|[yY])
      true
      ;;
    *)
      false
      ;;
    esac
}

confirm "This script will attempt to configure Firefox to use a local file as it's new tab page."
echo ""

echo "Checking for Firefox installation folder..."

for firefoxDirectory in "${firefoxDirectories[@]}"
do
  if [ -d "${firefoxDirectory}" ]
  then
    echo "Found Firefox in ${firefoxDirectory}"
    echo ""
    break
  fi
done

# Let's have a think about this, for now we prefer pre-defined and user-defined.
# if [ ! -d ${firefoxDir} ]
# then
#   echo "${firefoxDir} does not exist."
#   firefoxDir=$(dirname $(readlink -f $(which firefox)))
# fi

# if [ ! -d ${firefoxDir} ]
# then
#   echo "Attempting to find Firefox folder using find command..."
#   echo ""
#   firefoxDir=$(find /usr -type d -name "firefox")
# fi

if [ "$firefoxDirectory" == "" ] || [ ! -d "${firefoxDirectory}" ]
then
  read -r -p "Warning: Firefox installation not found, enter path: " firefoxDirectory
fi

if [ "$firefoxDirectory" == "" ] || [ ! -d "${firefoxDirectory}" ]
then
  echo "Error: cannot find Firefox installation!"
  exit 1
fi

echo "Checking for preferences folder..."
for firefoxPrefDirectory in "${firefoxPrefDirectories[@]}"
do
  if [ -d "${firefoxDirectory}/${firefoxPrefDirectory}" ]
  then
    echo "Found preferences in ${firefoxDirectory}/${firefoxPrefDirectory}"
    break
  fi
done

if [ ! -d "${firefoxDirectory}/${firefoxPrefDirectory}" ]
then
  echo "Error: Firefox preferences folder does not exist!"
  exit 1
fi

echo ""

if [ -f "${firefoxDirectory}/${firefoxPrefDirectory}/autoconfig.js" ]
then
  echo "Warning: autoconfig.js file exists!"
  confirm "Do you want to overwrite it?"
fi

echo "Creating autoconfig.js"
echo ""

if touch "${firefoxDirectory}/${firefoxPrefDirectory}/autoconfig.js"
then
  cat > "${firefoxDirectory}/${firefoxPrefDirectory}/autoconfig.js" << EOL
pref("general.config.filename", "firefox.cfg");
pref("general.config.obscure_value", 0);

// AutoConfig is sandboxed to the documented API by default,
// so we need to disable it
pref("general.config.sandbox_enabled", false);

// Enable userchrome.css customisation
defaultPref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
EOL
else
  echo "Error: Unable to create autoconfig.js in ${firefoxDirectory}/${firefoxPrefDirectory}"
  echo "Try running the script with sudo"
  exit 1
fi

if [ -f "${firefoxDirectory}/firefox.cfg" ]
then
  echo "Warning: firefox.cfg file exists!"
  confirm "Do you want to overwrite it?"
fi

read -r -p "Enter path of your startpage (default: ~/.config/startpage/index.html): " startpagePath
startpagePath=${startpagePath:-${HOME}/.config/startpage/index.html}
if [ ! -f "${startpagePath}" ]
then
  echo "Error: ${startpagePath} file does not exist!"
  echo "Are you sure you entered the correct file path?"
  exit 1
fi

echo "Creating firefox.cfg with path ${startpagePath}"
echo ""

if touch "${firefoxDirectory}/firefox.cfg"
then
  cat > "${firefoxDirectory}/firefox.cfg" << EOL
// IMPORTANT: Start your code on the 2nd line, this comment NEEDS to be here.
let { classes:Cc, interfaces:Ci, utils:Cu } = Components;

try {
  Cu.import("resource:///modules/AboutNewTab.jsm");
  let newTabURL = "file://${startpagePath// /%20}";
  AboutNewTab.newTabURL = newTabURL;
} catch(e) { Cu.reportError(e); }
EOL
else
  echo "Error: Unable to create firefox.cfg in ${firefoxDirectory}"
  echo "Try running the script with sudo"
  exit 1
fi


echo "Successfully set up Firefox to use ${startpagePath} as a new tab page."
echo "Restart Firefox now."
