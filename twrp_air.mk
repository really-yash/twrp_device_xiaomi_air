#
# SPDX-FileCopyrightText: The TeamWin Recovery Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common TeamWin Recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/air/device.mk)

PRODUCT_NAME := twrp_air
PRODUCT_DEVICE := air
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23124RN87G
