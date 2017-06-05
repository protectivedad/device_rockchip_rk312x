# config.mk
# 
# Product-specific compile-time definitions.
#
include device/rockchip/common/BoardConfig.mk
TARGET_BOARD_PLATFORM := rk312x
TARGET_BOARD_PLATFORM_GPU := mali400

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_CPU_VARIANT := cortex-a7

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
BOARD_USE_LOW_MEM := false
BOARD_HAVE_BLUETOOTH := false
PRODUCT_PACKAGE_OVERLAYS += device/rockchip/rk312x/overlay

TARGET_PREBUILT_KERNEL := device/rockchip/rk312x/kernel.plt9650g
#TARGET_PREBUILT_KERNEL := device/rockchip/rk312x/kernel.plt1065g
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

GRAPHIC_MEMORY_PROVIDER := dma_buf

ifeq ($(strip $(BOARD_USE_LOW_MEM)), true)
BUILD_WITH_GOOGLE_MARKET := false
PRODUCT_PROPERTY_OVERRIDES += ro.config.low_ram=true
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.jit.codecachesize=0
endif

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := $(TARGET_PREBUILT_KERNEL)
TARGET_RECOVERY_FSTAB := device/rockchip/rk312x/recovery/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"

PRODUCT_COPY_FILES += \
    device/rockchip/rk312x/audio_policy.conf:system/etc/audio_policy.conf \
    device/rockchip/rk312x/fstab.$(TARGET_BOARD_HARDWARE).bootmode.unknown:root/fstab.$(TARGET_BOARD_HARDWARE).bootmode.unknown \
    device/rockchip/rk312x/fstab.$(TARGET_BOARD_HARDWARE).bootmode.emmc:root/fstab.$(TARGET_BOARD_HARDWARE).bootmode.emmc \
    device/rockchip/rk312x/init.connectivity.rc:root/init.connectivity.rc \
    device/rockchip/rk312x/init.$(TARGET_BOARD_HARDWARE).bootmode.emmc.rc:root/init.$(TARGET_BOARD_HARDWARE).bootmode.emmc.rc \
    device/rockchip/rk312x/init.$(TARGET_BOARD_HARDWARE).bootmode.unknown.rc:root/init.$(TARGET_BOARD_HARDWARE).bootmode.unknown.rc \
    device/rockchip/rk312x/init.$(TARGET_BOARD_HARDWARE).rc:root/init.$(TARGET_BOARD_HARDWARE).rc

#PRODUCT_COPY_FILES += \
#    device/rockchip/rk312x/esp_init_data.bin:system/lib/modules/esp_init_data.bin

# f2fs
TARGET_USERIMAGES_USE_F2FS := true

PRODUCT_PACKAGES += \
    fsck.f2fs mkfs.f2fs

PRODUCT_COPY_FILES += \
    device/rockchip/rk312x/f2fs.ko:root/f2fs.ko

# Vendor overrides
PRODUCT_HAVE_NAND := true
PRODUCT_HAVE_GPS := false
PRODUCT_HAVE_RKAPPS := true
PRODUCT_HAVE_RKTOOLS := true
PRODUCT_HAVE_RKPHONE_FEATURES := true
PRODUCT_HAVE_OPTEE := false
PRODUCT_HAVE_ADBLOCK := false

# Features to add/remove
BUILD_WITH_UMS := false
BOARD_WITH_BOOT_BOOST := false

# Hardware
BOARD_HAVE_BLUETOOTH := false
BOARD_HAVE_BLUETOOTH_CSR := false
BOARD_HS_ETHERNET := false
BOARD_HAS_GPS := false
BOARD_SENSOR_ST := true

# Fonts
MINIMAL_FONT_FOOTPRINT := true
SMALLER_FONT_FOOTPRINT := true

#twrp
BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/rockchip/rk312x/recovery/recovery_keys.c
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TWHAVE_SELINUX := true
TW_INCLUDE_FB2PNG := true
BOARD_HAS_NO_REAL_SDCARD := false
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := landscape_mdpi

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
