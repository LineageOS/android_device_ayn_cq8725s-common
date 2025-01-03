#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-uct

# Kernel
PRODUCT_ENABLE_UFFD_GC := true

PRODUCT_COPY_FILES += \
    kernel/ayn/cq8725s/modules.systemdlkm_blocklist.msm.sun:$(TARGET_COPY_OUT_VENDOR_DLKM)/lib/modules/system_dlkm.modules.blocklist

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Shipping API
BOARD_SHIPPING_API_LEVEL := 202404
PRODUCT_SHIPPING_API_LEVEL := 35

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/cq8725s-common/cq8725s-common-vendor.mk)
