~/Projects/linux/hackrf/openocd-bin/bin/openocd \
	-f ~/Projects/linux/hackrf/openocd-bin/share/openocd/scripts/interface/cmsis-dap.cfg \
	-f ~/Projects/linux/hackrf/openocd-bin/share/openocd/scripts/target/at91samdXX.cfg \
	-c "program make/build/D11boot.elf verify; exit"
