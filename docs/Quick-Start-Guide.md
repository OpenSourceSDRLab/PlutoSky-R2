---
title: PlutoSky R2 Quick Start Guide
product: PlutoSky R2
doc_id: OSSDRLAB-PlutoSky-R2-QSG
version: 1.1
date: 2026-11-13
repo: https://github.com/OpenSourceSDRLab/PlutoSky-R2
---

<!-- ossl:header -->
<p><a href="https://www.opensourcesdrlab.com"><img src="../images/OpenSourceSDRLab-banner.jpg" alt="OpenSourceSDRLab" width="100%"></a></p>

# PlutoSky R2 Quick Start Guide

| Product | Document | Version | Date |
|---|---|---|---|
| PlutoSky R2 | OSSDRLAB-PlutoSky-R2-QSG | 1.1 | 2026-11-13 |
<!-- /ossl:header -->

## 1. Overview

The PlutoSky R2 is a software-defined radio based on the Analog Devices ADALM-PLUTO design, with a Zynq XC7Z020-2CLG484I, 1 GB DDR3, an AD9361 or AD9363 transceiver (2R2T), Gigabit Ethernet on the FPGA and a 10 MHz reference input. It works with PlutoSDR software over USB or Ethernet.

Two firmware sets are installed at the factory: the QSPI flash holds a port of the Analog Devices PlutoSDR firmware v0.38, and the microSD card holds the Tezuka firmware. This guide covers the first connection, the boot modes, re-installing the firmware, and the bare-metal Vivado/Vitis test designs. The full user manual is on the blog: <https://blog.opensourcesdrlab.com/archives/plutosky-r2-user-manual>.

## 2. What you need

| Item | Notes |
|---|---|
| PlutoSky R2 | |
| USB-C cables | one for the **USB2.0** port (data), one for the **DEBUG** port (serial console, JTAG) |
| PC | Windows, Linux or macOS |
| PlutoSDR USB drivers (Windows), libiio, IIO Oscilloscope | from Analog Devices: <https://wiki.analog.com/university/tools/pluto/users> |
| Serial terminal | for example PuTTY, 115200 baud |
| Firmware files (only to re-install) | from the [Releases](../../../releases) page |
| Vivado/Vitis or Vivado Lab (only to write the QSPI flash over JTAG) | from AMD: <https://www.xilinx.com/support/download.html> |
| Vivado and Vitis **2021.1** (only for the bare-metal test designs, section 7) | from AMD, same link |

## 3. Board connectors

| Connector | Function |
|---|---|
| TX1, RX1, TX2, RX2 | SMA RF ports |
| 10M_IN | 10 MHz reference input; the LOCK LED shows that the 40 MHz oscillator is locked to it |
| ETH | Gigabit Ethernet (connected to the FPGA) |
| DEBUG (USB-C, middle) | JTAG and UART console (FT2232H) |
| USB2.0 (USB-C) | USB network adapter, USB drive and serial console of the PlutoSDR firmware; power |
| TF | microSD card slot |
| BOOT | 2-position boot switch (see section 4) |
| RST | reset button |
| GPIO header | expansion I/O (1.8 V) |
| DONE, LED, PWR | FPGA configured, status, power |

## 4. Boot modes

| Mode | Switch 1 | Switch 2 | Boots from |
|---|---|---|---|
| QSPI (factory setting) | 1 (up) | 0 (down) | on-board QSPI flash (PlutoSDR firmware v0.38 port) |
| SD | 1 | 1 | microSD card (Tezuka firmware as shipped) |
| JTAG | 0 | 0 | nothing; for programming and debugging over JTAG |

Change the switch only while the board is powered off.

## 5. First connection

1. Windows: install the PlutoSDR USB drivers from Analog Devices, then libiio.
2. Connect the **USB2.0** port. The board appears as a network adapter (board `192.168.2.1`), a USB drive and a serial port.
3. Check: `iio_info -u ip:192.168.2.1`, then connect IIO Oscilloscope, GNU Radio or another PlutoSDR program to `ip:192.168.2.1`.
4. Ethernet: the v0.38 port uses `192.168.1.10` by default. To change it, log in on the DEBUG serial console (user `root`, password `analog`) and run `fw_setenv ipaddr_eth <address>`, then reboot.

> **Note:** All boards running the v0.38 port report the same USB serial number. To use several boards on one PC, give each board its own IP address (`config.txt` on the board's USB drive) and connect by IP.

## 6. Re-installing the firmware

**SD card (PlutoSDR firmware v0.38 port)**

1. Format a microSD card as FAT32 and copy all files from `PlutoSky-R2_SD-card-firmware_v0.38.zip` to it.
2. Set the boot switch to SD, insert the card and power the board.

For the Tezuka firmware, follow <https://blog.opensourcesdrlab.com/archives/plutosky-r2-tezuka-firmware-user-manual>.

**QSPI flash (factory firmware)**

1. Unzip `PlutoSky-R2_QSPI-flash-firmware_v0.38.zip`.
2. Set the boot switch to JTAG, connect the **DEBUG** port and write `boot.bin` to the QSPI flash with Vivado/Vitis *Program Flash* (flash type `qspi-x4-single`, FSBL `fsbl.elf`).
3. Power off, set the boot switch to QSPI and connect the **USB2.0** port: the board starts in DFU mode.
4. Run `program_dfu.bat` (Windows; uses `dfu-util` from the PlutoSDR USB drivers). On Linux run the two commands in the script with `dfu-util` directly.
5. Power-cycle the board.

**openwifi**

`jtag_spi_openwifi.zip` writes the openwifi image to the QSPI flash over JTAG. Follow its release notes and <https://blog.opensourcesdrlab.com/archives/plutosky-r2-openwifi-user-manual>. Login: user `root`, password `openwifi`.

## 7. Bare-metal test designs (Vivado/Vitis 2021.1)

The `vivado/` folder has two bare-metal designs for the PlutoSky R2. They are for hardware bring-up and FPGA development, not for normal PlutoSDR use. Running them does not change the QSPI flash: set the boot switch back to QSPI to start the PlutoSDR firmware again.

The prebuilt files are on the [Releases](../../../releases) page:

| File | Contents |
|---|---|
| `PlutoSky-R2_Peripheral-Test_prebuilt_Vivado2021.1.zip` | Zynq PS configuration for this board, FSBL and three test programs |
| `PlutoSky-R2_AD936X_prebuilt_Vivado2021.1.zip` | Analog Devices `fmcomms2` HDL design and no-OS AD9361 application, adapted to this board |

Both zip files contain a `boot.bif` instead of a ready-made `BOOT.bin`. To boot from the microSD card, run `bootgen -arch zynq -image boot.bif -o BOOT.bin -w` in the unzipped folder (or use Vitis *Create Boot Image*), copy `BOOT.bin` to a FAT32 microSD card and set the boot switch to **SD**. To run over JTAG instead, set the boot switch to **JTAG**, program the `.bit` file and run an `.elf` from Vitis (platform from the `.xsa`, processor `ps7_cortexa9_0`).

The console of these programs is the **DEBUG** port (FT2232H UART), **115200 baud, 8N1**.

**Peripheral tests**

| Program | What it does |
|---|---|
| `LED.elf` | blinks the status LED (PS MIO 7) and prints `Hello World` every 2 seconds; booted by the `boot.bif` in the zip |
| `DDR_Test.elf` | Zynq DRAM diagnostics: a menu on the console for a memory test and read/write eye measurements |
| `xusbps_intr_example_1.elf` | USB device example: connect the **USB2.0** port to the PC and the board appears as a small USB mass-storage device |

**AD936X reference design**

The application initialises the AD9361 (2 RX / 2 TX, 2.496 GHz RX and TX local oscillators, 40 MHz reference), transmits a test waveform from the TX ports, captures a receive buffer into DDR memory and prints the samples on the console as lines of the form `ADC1_I=…,ADC1_Q=…,ADC2_I=…,ADC2_Q=…`.

> **Caution:** the TX ports transmit as soon as the program starts. Connect TX to a 50 Ω load or to RX through an attenuator of at least 30 dB; do not connect an antenna.

The radio settings are in `vivado/AD936X/AD936X_PS/AD936X/src/main.c` (`default_init_param`); the example options are in `src/app_config.h`. The application is configured for the AD9361; on AD9363 boards set `AD9361_DEVICE` to 0 and `AD9363A_DEVICE` to 1 in `app_config.h` and rebuild. The design does not include the 10 MHz reference PLL logic of the PlutoSDR firmware, so the LOCK LED stays off and 10M_IN is not used.

### Rebuilding the designs

These steps follow the Analog Devices and AMD tools. OpenSourceSDRLab has not yet rebuilt the projects from this repository in Vivado; please report problems to support.

| Folder | Contents |
|---|---|
| `vivado/AD936X/AD936X_PL/library/` | Analog Devices HDL IP library (`hdl_2021_r1`) with the packaged IP definitions the project needs |
| `vivado/AD936X/AD936X_PL/projects/fmcomms2/zc702/` | Vivado project `zc702.xpr`. The folder keeps the name of the Analog Devices ZC702 project it was derived from; it targets the XC7Z020-2CLG484 of the PlutoSky R2 |
| `vivado/AD936X/AD936X_PS/` | `system_top.xsa` and the application sources in `AD936X/` |
| `vivado/Peripheral_Test/Test_PL/` | Vivado project `Test_PL.xpr` (Zynq processing system configured for this board) |
| `vivado/Peripheral_Test/Test_PS/` | `design_1_wrapper.xsa` and the `src/` folders of the three test programs |

AD936X design:

1. Open `vivado/AD936X/AD936X_PL/projects/fmcomms2/zc702/zc702.xpr` in Vivado 2021.1. The project finds the Analog Devices IP in `../../../library`.
2. Run **Generate Bitstream**, then **File › Export › Export Hardware** (include the bitstream).
3. In Vitis 2021.1, create a platform project from the exported `.xsa` (standalone, `ps7_cortexa9_0`), then an empty C application.
4. Copy the folders from `vivado/AD936X/AD936X_PS/AD936X/` into the application, add each folder to the include paths, use `src/lscript.ld` as the linker script, and build.

If Vivado reports missing or locked Analog Devices IP, rebuild the IP library with the Analog Devices HDL make flow (`make` in the `library` folder, see <https://wiki.analog.com/resources/fpga/docs/build>).

Peripheral tests:

1. Open `vivado/Peripheral_Test/Test_PL/Test_PL.xpr`, generate the block design wrapper if Vivado asks for it, generate the bitstream and export the hardware.
2. In Vitis, create a platform from the `.xsa`.
3. Create one application per test from the matching Vitis template (empty application for `LED` and the USB example, Zynq DRAM tests for `DDR_Test`) and replace its `src/` folder with the one from this repository.

## 8. Files in this repository

| Path | Contents |
|---|---|
| `hardware/PlutoSky-R2_Schematic.pdf` | Board schematic |
| `firmware/source/` | Source changes of the PlutoSDR firmware port against Analog Devices plutosdr-fw v0.38, with build steps |
| `vivado/` | Bare-metal Vivado/Vitis 2021.1 test designs (section 7) |

## 9. Support

- Product page: <https://opensourcesdrlab.com/products/plutosky-r2>
- User manual: <https://blog.opensourcesdrlab.com/archives/plutosky-r2-user-manual>
- Email: support@opensourcesdrlab.com
- Forum: <https://forum.opensourcesdrlab.com>
- Discord: <https://discord.gg/nnxY6DkmvT>

<!-- ossl:footer -->
---
<sub>© 2026 OpenSourceSDRLab. All rights reserved. · <a href="https://www.opensourcesdrlab.com">www.opensourcesdrlab.com</a></sub>
<!-- /ossl:footer -->
