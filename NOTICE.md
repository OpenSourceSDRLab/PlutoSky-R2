# Third-party notices

This repository and its release files contain work by OpenSourceSDRLab together with third-party software. The Apache License 2.0 in [LICENSE](LICENSE) applies **only** to the files created by OpenSourceSDRLab:

- `docs/`, `hardware/`, `images/`, `firmware/README.md`, `firmware/source/README.md`, `README.md`
- the `README.txt` and `boot.bif` files inside the two `*_prebuilt_Vivado2021.1.zip` files in Releases
- the two new files `hdl/projects/pluto/ADF4001_init.v` and `ADF4001_spi_drive.v` added by `firmware/source/plutosky-r2-plutosdr-fw-v0.38.patch`

All other material keeps its original copyright notices and licences:

| Component | Where | Owner | Licence |
|---|---|---|---|
| Firmware patch `firmware/source/plutosky-r2-plutosdr-fw-v0.38.patch` | repository | changes by OpenSourceSDRLab to the projects below | licence of each modified file (GPL-2.0 for Linux and U-Boot, GPL-2.0-or-later for buildroot, Analog Devices HDL licence for `hdl/`) |
| PlutoSDR firmware build system | Releases (firmware files) | Analog Devices, Inc. | see <https://github.com/analogdevicesinc/plutosdr-fw> |
| Linux kernel (`uImage`, kernel in `pluto.dfu`) | Releases | Linux kernel contributors, Analog Devices, Inc. | GPL-2.0 |
| U-Boot (`BOOT.bin`, `boot.bin`, `uboot-env.dfu`) | Releases | U-Boot contributors, Xilinx, Analog Devices | GPL-2.0 |
| Root file system (`uramdisk.image.gz`, rootfs in `pluto.dfu`), built with buildroot | Releases | buildroot and the authors of each package (libiio, BusyBox, glibc ...) | GPL-2.0, LGPL and other open-source licences of each package |
| FPGA design (bitstream in `BOOT.bin` / `pluto.dfu`) | Releases | Analog Devices, Inc. (HDL), Xilinx/AMD (IP cores) | Analog Devices HDL licence; Xilinx/AMD licence terms |
| First-stage boot loader `fsbl.elf` | Releases | Xilinx/AMD | Xilinx/AMD licence terms |
| openwifi image `openwifi-plutor2_sky-qspi-*.dfu` in `jtag_spi_openwifi.zip` | Releases | openwifi project (<https://github.com/open-sdr/openwifi>, <https://github.com/open-sdr/openwifi-hw>), Analog Devices, Linux contributors | AGPL-3.0, GPL-2.0 and the other licences stated by those projects |

**Bare-metal test designs in `vivado/`.** All source code in `vivado/` comes from Analog Devices, Xilinx/AMD and other third parties. It keeps its original copyright notices and licences, which have not been changed:

| Component | Files | Owner | Licence |
|---|---|---|---|
| Analog Devices HDL library (snapshot of the `hdl_2021_r1` branch) | `vivado/AD936X/AD936X_PL/library/` | Analog Devices, Inc. | per module, as stated in each file header: dual GPL-2.0 / ADI BSD for most modules; see `LICENSE`, `LICENSE_ADIBSD`, `LICENSE_GPL2` and `LICENSE_LGPL` in `vivado/AD936X/AD936X_PL/` (copied unchanged from the Analog Devices HDL repository) |
| S/PDIF receiver and transmitter cores | `library/axi_spdif_rx/*.vhd`, `library/axi_spdif_tx/tx_*.vhd` | Geir Drange (OpenCores) | LGPL, as stated in each file header |
| Analog Devices HDL project scripts and board files | `vivado/AD936X/AD936X_PL/projects/scripts/`, `projects/common/`, `projects/fmcomms2/common/` | Analog Devices, Inc. | as stated in each file header |
| AD936X project for this board, **modified by OpenSourceSDRLab** (derived from the Analog Devices `fmcomms2/zc702` project) | `vivado/AD936X/AD936X_PL/projects/fmcomms2/zc702/`: `system_top.v`, `system_constr.xdc`, `zc702_system_constr.xdc`, block design `system.bd` and project file | Analog Devices, Inc.; modifications OpenSourceSDRLab | Analog Devices licence as stated in each file header; the changes retarget the design to the XC7Z020-2CLG484 and the AD9361 pins of the PlutoSky R2 |
| AD9361 no-OS driver, platform layer and example application, **modified by OpenSourceSDRLab** (`src/main.c` adapted to this board; it prints the captured samples on the console) | `vivado/AD936X/AD936X_PS/AD936X/` (all files except `xilinx/no_os_uart.c`) | Analog Devices, Inc. | Analog Devices BSD-style licence, as stated in each file header |
| UART helper of the no-OS platform layer | `vivado/AD936X/AD936X_PS/AD936X/xilinx/no_os_uart.c` | Xilinx, Inc. / AMD | as stated in the file header |
| Xilinx/AMD IP cores, block designs and generated files | `.bd`, `.xci`, `.xsa` files in `vivado/`, and the Xilinx parts of the prebuilt `.bit`, `.xsa` and `fsbl.elf` files in Releases | Xilinx, Inc. / AMD | Xilinx/AMD licence terms |
| Peripheral test programs (Vitis templates: Zynq DRAM diagnostics, USB mass-storage example, empty application with an LED blink loop) | `vivado/Peripheral_Test/Test_PS/*/src/` | Xilinx, Inc. / AMD | as stated in each file header; `LED/src/main.c` has no header and only calls the Xilinx GPIO driver |

The prebuilt bitstreams, FSBLs and applications in the two `*_prebuilt_Vivado2021.1.zip` files are built from the sources above and are covered by the same licences. The AD936X bitstream contains Analog Devices HDL modules; Analog Devices allows distributing bit files built from its HDL under the ADI BSD licence (see `LICENSE` in `vivado/AD936X/AD936X_PL/`). Vivado and Vitis 2021.1 are not included; get them from AMD: <https://www.xilinx.com/support/download.html>.

Source code of the GPL components: the exact upstream commits and the changes are listed in [firmware/source/README.md](firmware/source/README.md).

Software that is **not** included:

- the Tezuka firmware shipped on the SD card: <https://github.com/F5OEO/tezuka_fw>;
- PlutoSDR USB drivers for Windows (including `dfu-util`), libiio and IIO Oscilloscope: <https://wiki.analog.com/university/tools/pluto/users>.

"Analog Devices", "PlutoSDR", "AD9361", "AD9363", "FMCOMMS2", "Xilinx", "AMD", "Zynq", "Vivado" and "Vitis" are trademarks of their respective owners. They are used here only to describe compatibility and do not imply endorsement.
