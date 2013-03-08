USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/SCHI519/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

# From stock rom's /system/build.prop
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := SCHI519

# Extracted from stock recovery.img
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining "fdisk -l /dev/block/mmcblk0p*" on a running device

# /dev/block/mmcblk0p8
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00c00000

# /dev/block/mmcblk0p12
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00c00000

# /dev/block/mmcblk0p16
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x1f400000

# /dev/block/mmcblk0p18
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x3a600000

# Don't know exactly, but I tried and it work
BOARD_FLASH_BLOCK_SIZE := 2048

# Extracted from stock recovery.img
TARGET_PREBUILT_KERNEL := device/samsung/SCHI519/kernel

# Use small fonts for LDPI device
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"

# Koush didn't opensource his "touch.c"
#BOARD_TOUCH_RECOVERY := true

# Use power button as select button
BOARD_HAS_NO_SELECT_BUTTON := true

# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
