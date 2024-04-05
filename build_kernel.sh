#!/bin/bash

git submodule update --init --recursive

export ARCH=arm64
export CROSS_COMPILE=~/toolchain/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=q

make exynos7885-a7y18lte_defconfig
make -j$(nproc --all)
