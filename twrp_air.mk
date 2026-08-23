#
# SPDX-FileCopyrightText: The TeamWin Recovery Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from these configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TeamWin Recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/air/device.mk)

PRODUCT_NAME := twrp_air
PRODUCT_DEVICE := air
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23124RN87G
PRODUCT_SHIPPING_API_LEVEL := 32
