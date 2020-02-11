#include "app.h"

void setup()
{

  // Note: to start a central instance, initialize like below:

  // // Default config for central mode
  // BLE_STACK_CENTRAL_DEF(init);

  // // Add an addresses to scan for
  // ble_gap_addr_t first = {
  //     .addr_type = BLE_GAP_ADDR_TYPE_RANDOM_STATIC,
  //     .addr = {0x81, 0x64, 0x4C, 0xAD, 0x7D, 0xC0}};
  // init.config.devices[0] = first;

  // ble_gap_addr_t second = {
  //     .addr_type = BLE_GAP_ADDR_TYPE_RANDOM_STATIC,
  //     .addr = {0x7c, 0x84, 0x9d, 0x32, 0x8d, 0xe4}};
  // init.config.devices[1] = second;

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