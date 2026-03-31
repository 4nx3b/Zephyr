#!/bin/bash

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Cloning BCR"
git clone https://github.com/Chaitanyakm/vendor_bcr.git vendor/bcr

echo "Cloning TSR"
git clone https://github.com/oplus-mt6895/packages_apps_TouchServices.git packages/apps/TouchServices

echo "Clonning Private keys"
git clone https://github.com/Adarsh0127-Elite/android_vendor_lineage-priv_keys-template.git -b master vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
echo "no" | ./generate.sh
cd ../../..
