obj-m := mtd.o
obj-m += mtd_blkdevs.o
obj-m += mtdblock.o
obj-m += mtdblock_ro.o
obj-m += nand.o
obj-m += nandsim.o

mtd-objs	:= mtdcore.o mtdsuper.o mtdconcat.o mtdpart.o mtdchar.o
nand-objs	:= nand_base.o nand_bbt.o nand_ecc.o nand_ids.o
 
KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	@rm -rf *.o *.ko *.mod.* *.order *.symvers .*.cmd .*.o.d .tmp_versions

.PHONY: all clean

