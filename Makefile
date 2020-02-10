
OS_DIR := nucelus-os

.PHONY: build clean debug erase flash flash_softdevice  rtt

default: build

build:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) build

clean:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) clean

debug:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) debug

erase:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) erase

flash:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) flash

flash_softdevice:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) flash_softdevice

rtt:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) rtt