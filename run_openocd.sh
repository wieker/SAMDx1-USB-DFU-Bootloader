~/Projects/linux/hackrf/openocd-bin/bin/openocd \
	-f ~/Projects/linux/hackrf/openocd-bin/share/openocd/scripts/interface/cmsis-dap.cfg \
	-f ~/Projects/linux/hackrf/openocd-bin/share/openocd/scripts/target/at91samdXX.cfg \
	-c "program example-apps/vcp/make/build/vcp.elf verify; exit"
