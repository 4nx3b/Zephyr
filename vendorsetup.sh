#!/bin/bash

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

cd frameworks/native  
git fetch https://github.com/NINJAHUNTER1357/android_frameworks_native.git
git cherry-pick e0d502fd8aa653d0b96f20d3c26cd73ac00247d6
cd ../../
