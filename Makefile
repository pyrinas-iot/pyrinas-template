# Start: Your configuration!

# Set this to the directory of nucleus-os
# If you used a symbolic link this points to
# the `nucleus-os` folder in this repository
OS_DIR := nucelus-os

# This should be the serial number of your Jlink programmer.
# To find simply run `jlinkexe`
PROG_SERIAL=1234678

# This is your debugger port for Jlink's RTT. If you
# have mulitple, you will have to change this on each app
# your're using
PROG_PORT=19021

# This is where you set your board type. Here are the supported boards:
# xenon - Particle Xenon
BOARD=xenon


# This is where you can name your app something. Make it specific
APP_FILENAME=nucelus-template

# End: Your Configuration

EXPORT_ARGS += \
	APP_DIR=$(PWD) \
	PROG_SERIAL=$(PROG_SERIAL) \
	PROG_PORT=$(PROG_PORT) \
	BOARD=$(BOARD) \
	APP_FILENAME=$(APP_FILENAME)

.PHONY: build clean debug erase flash flash_softdevice rtt

default: build

build:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) build

clean:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) clean

debug:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) debug

erase:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) erase

flash:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) flash

flash_softdevice:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) flash_softdevice

rtt:
	@export $(EXPORT_ARGS) && make -C $(OS_DIR) rtt