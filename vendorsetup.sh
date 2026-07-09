#!/bin/bash

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Cloning Viper4FX"
mkdir -p packages/apps
cd packages/apps
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git ViPER4AndroidFX
cd ../..
