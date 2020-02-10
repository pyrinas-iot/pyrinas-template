#include "app.h"

void setup()
{

  // Note: to start a central instance, initialize like below:

  // // Default config for central mode
  // BLE_STACK_CENTRAL_DEF(init);

  // // Add an address to scan for
  // init.config.devices[0] = {
  //     .addr_type = BLE_GAP_ADDR_TYPE_RANDOM_STATIC,
  //     .addr = {0x12, 0x34, 0x56, 0x78, 0x9a, 0xbc}};

  // // 7c:84:9d:32:8d:e4
  // init.config.devices[1] = {
  //     .addr_type = BLE_GAP_ADDR_TYPE_RANDOM_STATIC,
  //     .addr = {0x12, 0x34, 0x56, 0x78, 0x9a, 0xbc}};

  // // Increment the device_count
  // init.config.device_count = 2;

  // // Configuration for ble stack
  // ble_stack_init(&init);

  // // Start scanning.
  // scan_start();

  // Note: to start a peripheral instance, initialize like below:

  BLE_STACK_PERIPH_DEF(init);

  // Configuration for ble stack
  ble_stack_init(&init);

  // Start advertising
  advertising_start();
}

void loop()
{
}