#!/bin/bash

# ███████╗██████╗  ██████╗    ██████╗ ██████╗ ██╗██╗   ██╗███████╗██████╗ 
# ██╔════╝██╔══██╗██╔════╝    ██╔══██╗██╔══██╗██║██║   ██║██╔════╝██╔══██╗
# █████╗  ██████╔╝██║         ██║  ██║██████╔╝██║██║   ██║█████╗  ██████╔╝
# ██╔══╝  ██╔═══╝ ██║         ██║  ██║██╔══██╗██║╚██╗ ██╔╝██╔══╝  ██╔══██╗
# ██║     ██║     ╚██████╗    ██████╔╝██║  ██║██║ ╚████╔╝ ███████╗██║  ██║
# ╚═╝     ╚═╝      ╚═════╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝

sudo cp FPC_driver_linux_27.26.23.39/libfpcbep.so /usr/lib/
sudo cp FPC_driver_linux_libfprint/60-libfprint-2-device-fpc.rules /lib/udev/rules.d/
sudo cp FPC_driver_linux_libfprint/libfprint-2.so /usr/lib/
sudo cp FPC_driver_linux_libfprint/libfprint-2.so.2 /usr/lib/
sudo cp FPC_driver_linux_libfprint/libfprint-2.so.2.0.0 /usr/lib/
