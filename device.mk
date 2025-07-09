#
# SPDX-FileCopyrightText: The TeamWin Recovery Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/air

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
