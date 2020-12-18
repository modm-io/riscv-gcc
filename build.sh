#!/usr/bin/env bash

# Install dependencies
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git

# Get sources
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain

# Configure
./configure --prefix=/opt/modm-riscv-gcc --enable-multilib

# Build
make -j4
