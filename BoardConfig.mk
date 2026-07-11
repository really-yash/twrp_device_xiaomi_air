#
# SPDX-FileCopyrightText: The TeamWin Recovery Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/air
KERNEL_PATH := device/xiaomi/air-kernel

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a76

# Boot image
BOARD_BOOT_HEADER_VERSION := 4
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_RAMDISK_USE_LZ4 := true
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_PATH)/dtb

BOARD_KERNEL_CMDLINE += bootopt=64S3,32N2,64N2

BOARD_DTB_OFFSET := 0x47c80000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x40000000
BOARD_KERNEL_PAGESIZE := 0x00001000
BOARD_KERNEL_TAGS_OFFSET := 0x47c80000
BOARD_RAMDISK_OFFSET := 0x66f00000

BOARD_MKBOOTIMG_ARGS += \
	--base $(BOARD_KERNEL_BASE)
	--pagesize $(BOARD_KERNEL_PAGESIZE) --board "" \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_TAGS_OFFSET) \
	--header_version $(BOARD_BOOT_HEADER_VERSION) \
	--dtb $(BOARD_PREBUILT_DTBIMAGE_DIR)/mt6835.dtb \
	--dtb_offset $(BOARD_DTB_OFFSET)

# Kernel
TARGET_PREBUILT_KERNEL := $(KERNEL_PATH)/Image.gz
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# Kill aosp kernel build task while preserving kernel
TARGET_NO_KERNEL_OVERRIDE := true

# Workaround to make lineage's soong generator work
TARGET_KERNEL_SOURCE := $(KERNEL_PATH)/kernel-headers

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := air
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6835