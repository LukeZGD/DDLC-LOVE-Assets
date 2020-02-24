#!/bin/bash

clear
echo "DDLC-LOVE-Assets Config"
echo "Select system to be used"
select opt in "3DS (old-png)" "3DS (new-t3x)" "Switch" "PS Vita" "PSP" "PS3"; do
  case $opt in
    "3DS (old-png)" ) system=3dspng; break;;
    "3DS (new-t3x)" ) system=3dst3x; break;;
    "Switch" ) system=switch; break;;
    "PS Vita" ) system=psvita; break;;
    "PSP" ) system=psp; break;;
    "PS3" ) system=ps3; break;;
    * ) exit;;
  esac
done

rm -rf output 2>/dev/null
mkdir -p output/assets

echo "Copying files..."
if [[ $system == 3dspng ]]; then
  cp -r 3ds/common/audio output/assets
  cp -r 3ds/old-png/fonts output/assets
  cp -r 3ds/old-png/images output/assets
elif [[ $system == 3dst3x ]]; then
  cp -r 3ds/common/audio output/assets
  cp -r 3ds/new-t3x/fonts output/assets
  cp -r 3ds/new-t3x/images output/assets
elif [[ $system == switch ]]; then
  cp -r ddlclove/common/audio output/assets
  cp -r ddlclove/common/fonts output/assets
  cp -r ddlclove/switch/images output/assets
elif [[ $system == psvita ]]; then
  cp -r ddlclove/common/audio output/assets
  cp -r ddlclove/psvita/audio output/assets
  cp -r ddlclove/common/fonts output/assets
  cp -r ddlclove/psvita/images output/assets
elif [[ $system == psp ]]; then
  cp -r ddlclove/common/audio output/assets
  cp -r ddlclove/psp/audio output/assets
  cp -r ddlclove/psp/images output/assets
elif [[ $system == ps3 ]]; then
  cp -r ddlclove/ps3/audio output/assets
  cp -r ddlclove/ps3/images output/assets
fi
echo "Done!"