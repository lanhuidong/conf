#!/bin/bash
export LANG=C

export ALT_BOOTDIR=/home/lan/jdk1.6.0_45
export ALT_JDK_IMPORT_PATH=/home/lan/jdk1.6.0_45

export ANT_HOME=/home/lan/apahe-ant-1.7.1

export PATH=/home/lan/jdk1.6.0_45/bin:$PATH:$ANT_HOME:/usr/lib/gcc/x86_64-linux-gnu/4.8.2

export ALLOW_DOWNLOADS=true
export ARCH_DATA_MODEL=64

export HOTSPOT_BUILD_JOBS=5

export ALT_OUTPUTDIR=../build/hotspot_debug

cd make
make jvmg jvmg1 | tee /home/lan/hotspot7/hotspot_debug.log
