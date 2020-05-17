cmake_minimum_required(VERSION 3.16)
project(SAMDx1_USB_DFU_Bootloader C ASM)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_VERBOSE_MAKEFILE 1)

set(OPENOCD_BINARY "/home/wieker/Projects/linux/hackrf/openocd-bin/bin/openocd")
set(CMAKE_C_STANDARD 99)

set(CMAKE_C_COMPILER "/usr/bin/arm-none-eabi-gcc")
set(CMAKE_ASM_COMPILER "/usr/bin/arm-none-eabi-gcc")

set(ARCH_FLAGS "\
        -mcpu=cortex-m0 \
        -g3 \
")

include_directories(.)
include_directories(include)
include_directories(include/component)
include_directories(include/instance)
include_directories(include/pio)

add_executable(SAMDx1_USB_DFU_Bootloader
        include/component/ac.h
        include/component/adc.h
        include/component/dac.h
        include/component/dmac.h
        include/component/dsu.h
        include/component/eic.h
        include/component/evsys.h
        include/component/gclk.h
        include/component/hmatrixb.h
        include/component/mtb.h
        include/component/nvmctrl.h
        include/component/pac.h
        include/component/pm.h
        include/component/port.h
        include/component/rtc.h
        include/component/sercom.h
        include/component/sysctrl.h
        include/component/tc.h
        include/component/tcc.h
        include/component/usb.h
        include/component/wdt.h
        include/instance/ac.h
        include/instance/adc.h
        include/instance/dac.h
        include/instance/dmac.h
        include/instance/dsu.h
        include/instance/eic.h
        include/instance/evsys.h
        include/instance/gclk.h
        include/instance/mtb.h
        include/instance/nvmctrl.h
        include/instance/pac0.h
        include/instance/pac1.h
        include/instance/pac2.h
        include/instance/pm.h
        include/instance/port.h
        include/instance/ptc.h
        include/instance/rtc.h
        include/instance/sbmatrix.h
        include/instance/sercom0.h
        include/instance/sercom1.h
        include/instance/sercom2.h
        include/instance/sysctrl.h
        include/instance/tc1.h
        include/instance/tc2.h
        include/instance/tcc0.h
        include/instance/usb.h
        include/instance/wdt.h
        include/pio/samd11c14a.h
        include/pio/samd11d14am.h
        include/pio/samd11d14as.h
        include/pio/samd11d14au.h
        include/core_cm0plus.h
        include/core_cmFunc.h
        include/core_cmInstr.h
        include/sam.h
        include/samd11.h
        include/samd11c14a.h
        include/samd11d14am.h
        include/samd11d14as.h
        include/samd11d14au.h
        bootloader.c
        nvm_data.h
        startup.s
        usb.h
        usb_descriptors.c
        usb_descriptors.h
        utils.h)
