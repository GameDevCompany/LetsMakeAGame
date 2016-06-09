var gamepads_available = gamepad_get_device_count();
for(var i = 0;i < gamepads_available;i++;) {
  global.gamepadConnected[i] = gamepad_is_connected(i);
  global.gamepadTaken[i] = false;
}
global.time = 0;
global.timeScale = 1;
global.lastIndex = 0;
global.grav = 0.981;
global.particleSystem = part_system_create();
global.inGame = true;
global.gameMode = "DeathMatch";
global.hwrap = true;
global.vwrap = false;

global.shakeAmount = 2;
global.shakeTime = 0;


particles();
randomize();

