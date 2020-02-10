
OS_DIR := nucelus-os

.PHONY: build flash debug rtt clean

default: build

build:
	export APP_DIR=$(PWD) && make -C $(OS_DIR) build

flash:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) flash

debug:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) debug

rtt:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) rtt

clean:
	@export APP_DIR=$(PWD) && make -C $(OS_DIR) clean