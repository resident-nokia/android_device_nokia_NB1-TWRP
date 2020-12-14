#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := device/nokia/NB1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8998
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540
TARGET_USES_64_BIT_BINDER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# GPT Utils
BOARD_PROVIDES_GPTUTILS := true

# Kernel
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_CMDLINE     := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc1b0000 
BOARD_KERNEL_CMDLINE	 += androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 
BOARD_KERNEL_CMDLINE	 += sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1  
BOARD_KERNEL_CMDLINE	 += androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE     += skip_override androidboot.selinux=permissive
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_SECOND_OFFSET      := 0x00f00000
BOARD_KERNEL_IMAGE_NAME  := Image.gz-dtb
TARGET_PREBUILT_KERNEL   := $(LOCAL_PATH)/prebuilt/Image.gz-dtb

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54429687808
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
USE_RECOVERY_INSTALLER := true
RECOVERY_INSTALLER_PATH := $(LOCAL_PATH)/installer
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Filesystem
TARGET_NO_KERNEL := false
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
AB_OTA_UPDATER := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_NEED_SELINUX_FIX := true
RECOVERY_SDCARD_ON_DATA := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2025-12-31

# TWRP specific build flags
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
TW_DEFAULT_BRIGHTNESS := 80
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := true
TW_HAS_EDL_MODE := true
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_EXTERNAL_STORAGE_PATH := /external_sd
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_INCLUDE_FBE := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := hbtp_vm
TW_INTERNAL_STORAGE_MOUNT_POINT := sdcard
TW_INTERNAL_STORAGE_PATH := /data/media/0
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_PARTITION_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor