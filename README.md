# Up-to-date RISC-V GNU GCC Toolchain from source

[![CircleCI](https://circleci.com/gh/modm-ext/docker-riscv-gcc.svg?style=svg)](https://circleci.com/gh/modm-ext/docker-riscv-gcc)

## Installation

Download the latest `riscv-gcc.tar.bz2` from [Releases](https://github.com/modm-ext/docker-riscv-gcc/releases)
and unpack it to `/opt`:

```sh
tar xf riscv-gcc.tar.bz2 --directory /opt
```

Add the `bin/` directorie(s?) to your `$PATH`,
e.g. by adding the following line to your `~/.bashrc` file:

```sh
export PATH="/opt/riscv-gcc/bin:$PATH"
```

## Building locally with Docker

There is a Docker image with all prerequisites for building, created from the `Dockerfile` in this repository.
Pull and start the image from Dockerhub with:

```sh
docker run -it modm/riscv-gcc-prerequisites
```

Or build the image from the local `Dockerfile` and start it:

```sh
docker build --tag riscv-gcc-prerequisites:local .
docker run -it riscv-gcc-prerequisites:local
```

Inside the Docker container get this repository

```sh
git clone https://github.com/modm-ext/docker-riscv-gcc.git
```

Run the build.sh script

```sh
cd docker-riscv-gcc
time ./build.sh
```

The toolchain will be in `/opt/riscv-gcc`.

## Building in CircleCI

There is a CircleCI job defined in `.circleci/config.yml` which builds the
toolchain using the Docker container. For tagged commits, a Github release
will be created with the toolchain put into a downloadable `.tar.bz2` at
[Releases](https://github.com/modm-ext/docker-riscv-gcc/releases).
