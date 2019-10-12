#!/bin/sh

insmod ./mtd.ko
insmod ./mtd_blkdevs.ko
insmod ./mtdblock.ko
insmod ./nand.ko
insmod ./nandsim.ko

chmod 0777 /dev/mtdblock0
