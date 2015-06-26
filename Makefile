ifneq ($(KERNELRELEASE),) 
obj-m := hello.o
else
	KERNEL_SOURCE := /usr/src/linux-3.12.25 
	PWD := $(shell pwd)

default: 
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=$(PWD) modules  
clean:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=$(PWD) clean

endif
