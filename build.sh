#!/usr/bin/env bash

INSTALL="/opt/riscv-gcc"

# Get sources
#git clone --recursive --depth 1 --shallow-submodules https://github.com/riscv/riscv-gnu-toolchain
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain

# Configure
./configure --prefix="$INSTALL" --enable-multilib

# Build
make linux -j8
