cmake_minimum_required(VERSION 3.16)
project(SAMDx1_USB_DFU_Bootloader C ASM)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_VERBOSE_MAKEFILE 1)

set(OPENOCD_BINARY "/home/wieker/Projects/linux/hackrf/openocd-bin/bin/openocd")
set(CMAKE_C_STANDARD 99)

set(CMAKE_C_COMPILER "/usr/bin/arm-none-eabi-gcc")
set(CMAKE_ASM_COMPILER "/usr/bin/arm-none-eabi-gcc")

set(CMAKE_C_FLAGS "\
        -W -Wall --std=gnu99 -Os -g3 \
        -Wno-address-of-packed-member -fno-diagnostics-show-caret \
        -fdata-sections -ffunction-sections -funsigned-char -funsigned-bitfields \
        -mcpu=cortex-m0plus -mthumb \
        -g3 \
        -D__SAMD11D14AM__ \
        -DDONT_USE_CMSIS_INIT \
        -DSTARTUP_FROM_RESET \
")

set(CMAKE_ASM_FLAGS "${CMAKE_C_FLAGS} \
        -x assembler-with-cpp \
")

set(CMAKE_EXE_LINKER_FLAGS " \
        -mcpu=cortex-m0plus -mthumb \
        -Wl,--gc-sections \
        -Wl,--script=${PROJECT_SOURCE_DIR}/linker/samd11d14.ld \
")

include_directories(.)
include_directories(include)
include_directories(include/component)
include_directories(include/instance)
include_directories(include/pio)

add_executable(SAMDx1_USB_DFU_Bootloader
        bootloader.c
        startup.s
        usb_descriptors.c)