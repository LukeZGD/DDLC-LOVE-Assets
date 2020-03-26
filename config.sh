#!/bin/bash

clear
echo "DDLC-LOVE-Assets Config"
if [ ! -z $1 ]; then
    system=$1
else
    echo "Select system to be used"
    select opt in "3DS" "Switch" "PS Vita" "PSP" "PS3"; do
    case $opt in
        "3DS" ) system=3ds; break;;
        "Switch" ) system=switch; break;;
        "PS Vita" ) system=psvita; break;;
        "PSP" ) system=psp; break;;
        "PS3" ) system=ps3; break;;
        * ) exit;;
    esac
    done
fi

rm -rf assets
mkdir -p assets

echo "Copying files..."
if [[ $system == 3ds ]]; then
  cp -r 3ds/common/audio assets
  cp -r 3ds/old-png/fonts assets
  cp -r 3ds/old-png/images assets
elif [[ $system == 3dst3x ]]; then
  cp -r 3ds/common/audio assets
  cp -r 3ds/new-t3x/fonts assets
  cp -r 3ds/new-t3x/images assets
elif [[ $system == switch ]]; then
  cp -r ddlclove/common/audio assets
  cp -r ddlclove/common/fonts assets
  cp -r ddlclove/switch/images assets
elif [[ $system == psvita ]]; then
  cp -r ddlclove/common/audio assets
  cp -r ddlclove/psvita/audio assets
  cp -r ddlclove/common/fonts assets
  cp -r ddlclove/psvita/images assets
elif [[ $system == psp ]]; then
  cp -r ddlclove/common/audio assets
  cp -r ddlclove/psp/audio assets
  cp -r ddlclove/psp/images assets
elif [[ $system == ps3 ]]; then
  cp -r ddlclove/ps3/audio assets
  cp -r ddlclove/ps3/images assets
fi
echo "Done!"
