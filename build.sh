#!/usr/bin/env bash

# Get sources
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain

# Configure
./configure --prefix=/opt/modm-riscv-gcc --enable-multilib

# Build
make -j4
