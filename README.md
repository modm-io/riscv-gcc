# DEPRECATED

### Please switch to another GCC distribution, e.g. from [Embecosm](https://www.embecosm.com/resources/tool-chain-downloads/#riscv-stable).

# RISC-V GNU GCC Toolchain from source

## Installation

Download the latest `modm-riscv-gcc.tar.bz2` from [Releases](https://github.com/modm-io/riscv-gcc/releases)
and unpack it to `/opt`:

```sh
tar xf modm-riscv-gcc.tar.bz2 --directory /opt
```

Add the `bin/` directorie(s?) to your `$PATH`,
e.g. by adding the following line to your `~/.bashrc` file:

```sh
export PATH="/opt/modm-riscv-gcc/bin:$PATH"
```

## Building local

The build script is written for Ubuntu 20.04.

Just run the build.sh script:

```sh
./build.sh
```

The toolchain will be in `/opt/modm-riscv-gcc`.
