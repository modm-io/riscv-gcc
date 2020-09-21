FROM ubuntu:20.04
LABEL maintainer="Raphael Lehmann <raphael+docker@rleh.de>"
LABEL Description="Image for building the upstream RISC-V GNU toolchain for Linux"
WORKDIR /work

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
