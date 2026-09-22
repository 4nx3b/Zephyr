# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from the custom device configuration.
$(call inherit-product, device/oplus/zephyr/device.mk)

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_zephyr
PRODUCT_DEVICE := zephyr
PRODUCT_MANUFACTURER := OPlus
PRODUCT_BRAND := OPlus
PRODUCT_MODEL := mt6895
PRODUCT_SYSTEM_NAME := zephyr

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=OnePlus/PGKM10/OP5565:15/AP3A.240617.008/S.1f56c75-1-a469:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

#Assion Shit 
TARGET_INCLUDE_AXFX := true
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 32

# Maintainer name
AXION_MAINTAINER := v3rsi0n

# Processor name
AXION_PROCESSOR := Dimenshitty_8100_Max

#Extras 
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := false
TARGET_OPTIMIZED_DEXOPT := true
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := speed
WITH_DEXPREOPT := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
