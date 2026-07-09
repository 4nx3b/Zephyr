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

# Lunaris Flags
TARGET_CUSTOM_UDFPS := true
WITH_GMS := true
WITH_GMS_COMMS_SUITE := false
WITH_PIXEL_LAUNCHER := true
TARGET_USE_WALLPAPERS := true
TARGET_USE_GPHOTOS := false
TARGET_USE_FILES := false
TARGET_USE_MAPS := false
USE_REALITY_ENGINE := false
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
SURFACE_FLINGER_BOOST := true
TARGET_DISABLE_MATLOG:= true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_WEATHER := false
WITH_BCR := false


# Optimisations 
TARGET_OPTIMIZED_DEXOPT := true
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := speed
WITH_DEXPREOPT := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
