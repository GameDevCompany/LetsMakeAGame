var gamepads_available = gamepad_get_device_count();
for(var i = 0;i < gamepads_available;i++;) {
  global.gamepadConnected[i] = gamepad_is_connected(i);
  global.gamepadTaken[i] = false;
}
global.time = 0;
global.timeScale = 1;
