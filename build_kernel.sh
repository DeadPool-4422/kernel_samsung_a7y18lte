#!/bin/bash

git pull
git submodule update

export ARCH=arm64
export CROSS_COMPILE=./toolchain/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=q

make exynos7885-a7y18lte_defconfig
make -j$(nproc --all)
