# Firmware

The prebuilt firmware files are attached to the [Releases](../../../releases) page:

| File | Contents |
|---|---|
| `PlutoSky-R2_SD-card-firmware_v0.38.zip` | SD-card boot files: `BOOT.bin`, `devicetree.dtb`, `uEnv.txt`, `uImage`, `uramdisk.image.gz` |
| `PlutoSky-R2_QSPI-flash-firmware_v0.38.zip` | QSPI flash files: `boot.bin`, `fsbl.elf`, `pluto.dfu`, `uboot-env.dfu` and `program_dfu.bat` |
| `jtag_spi_openwifi.zip` | openwifi image and JTAG flashing scripts |

The SD card shipped with the board contains the Tezuka firmware; see the [Tezuka user manual](https://blog.opensourcesdrlab.com/archives/plutosky-r2-tezuka-firmware-user-manual).

How to install the files: [Quick Start Guide](../docs/Quick-Start-Guide.md), section 5.

Source code of the PlutoSDR firmware port: [source/](source/) (patch against Analog Devices plutosdr-fw v0.38).
