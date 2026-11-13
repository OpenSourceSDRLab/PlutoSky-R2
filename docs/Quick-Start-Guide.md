---
title: PlutoSky R2 Quick Start Guide
product: PlutoSky R2
doc_id: OSSDRLAB-PlutoSky-R2-QSG
version: 1.0
date: 2026-11-12
repo: https://github.com/OpenSourceSDRLab/PlutoSky-R2
---

<!-- ossl:header -->
<p><a href="https://www.opensourcesdrlab.com"><img src="../images/OpenSourceSDRLab-banner.jpg" alt="OpenSourceSDRLab" width="100%"></a></p>

# PlutoSky R2 Quick Start Guide

| Product | Document | Version | Date |
|---|---|---|---|
| PlutoSky R2 | OSSDRLAB-PlutoSky-R2-QSG | 1.0 | 2026-11-12 |
<!-- /ossl:header -->

## 1. Overview

The PlutoSky R2 is a software-defined radio based on the Analog Devices ADALM-PLUTO design, with a Zynq XC7Z020-2CLG484I, 1 GB DDR3, an AD9361 or AD9363 transceiver (2R2T), Gigabit Ethernet on the FPGA and a 10 MHz reference input. It works with PlutoSDR software over USB or Ethernet.

Two firmware sets are installed at the factory: the QSPI flash holds a port of the Analog Devices PlutoSDR firmware v0.38, and the microSD card holds the Tezuka firmware. This guide covers the first connection, the boot modes and re-installing the firmware. The full user manual is on the blog: <https://blog.opensourcesdrlab.com/archives/plutosky-r2-user-manual>.

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

## 7. Files in this repository

| Path | Contents |
|---|---|
| `hardware/PlutoSky-R2_Schematic.pdf` | Board schematic |
| `firmware/source/` | Source changes of the PlutoSDR firmware port against Analog Devices plutosdr-fw v0.38, with build steps |

## 8. Support

- Product page: <https://opensourcesdrlab.com/products/plutosky-r2>
- User manual: <https://blog.opensourcesdrlab.com/archives/plutosky-r2-user-manual>
- Email: support@opensourcesdrlab.com
- Forum: <https://forum.opensourcesdrlab.com>
- Discord: <https://discord.gg/nnxY6DkmvT>

<!-- ossl:footer -->
---
<sub>© 2026 OpenSourceSDRLab. All rights reserved. · <a href="https://www.opensourcesdrlab.com">www.opensourcesdrlab.com</a></sub>
<!-- /ossl:footer -->
