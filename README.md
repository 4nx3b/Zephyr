# Lunaris AOSP - Zephyr Build Guide

This guide contains the commands required to sync the source, clone the device trees, and build Lunaris AOSP for the Realme GT Neo 3 (Zephyr).

---

## 1. Initialize the Repo

```bash
repo init -u https://github.com/Lunaris-AOSP/android -b 16.2 --git-lfs
```

---

## 2. Sync Sources

```bash
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

---

## 3. Clone Device Trees

```bash
git clone -b Lunaris https://github.com/4nx3b/Zephyr.git device/oplus/zephyr && \
git clone -b los-24 https://gitlab.com/NINJAHUNTER1357/android_device_oplus_zephyr-kernel.git device/oplus/zephyr-kernel && \
git clone -b lineage-23.2 https://github.com/Adarsh0127-Elite/hardware_oplus.git hardware/oplus && \
git clone -b lineage-23.2 https://github.com/Adarsh0127-Elite/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr && \
git clone -b lineage-23.2 https://github.com/Adarsh0127-Elite/android_hardware_mediatek.git hardware/mediatek && \
git clone -b lineage-23.2 https://gitlab.com/Adarsh0127-Elite/proprietary_vendor_oplus_zephyr.git vendor/oplus/zephyr
```

---

## 4. Setup Build Environment

```bash
. b*/env*
```

---

## 5. Choose Target

```bash
lunch lineage_zephyr-bp4a-user
```

---

## 6. Build ROM

### Normal Build

```bash
m bacon
```

### Ignore SELinux Neverallow Errors

```bash
SELINUX_IGNORE_NEVERALLOWS=true m bacon
```
