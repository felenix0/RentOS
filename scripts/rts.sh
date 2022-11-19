#!/bin/bash

export RTS=/mnt/rts
export RTS_TGT=x86_64-rts-linux-gnu
export RTS_DISK=/dev/sdb

if ! grep -q "$RTS" /proc/mounts; then
    source setupdisk.sh "$RTS_DISK"
fi
