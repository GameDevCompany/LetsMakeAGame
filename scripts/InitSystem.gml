InitAudio();
global.paused = false;
global.players = noone;
var gamepads_available = gamepad_get_device_count();
for(var i = 0;i < gamepads_available;i++;) {
  global.gamepadConnected[i] = gamepad_is_connected(i);
  global.gamepadTaken[i] = false;
}
global.time = 0;
global.timeScale = 1;
global.milli = 1000000;
global.lastIndex = 0;
global.lvlspd = 0;
global.inGame = true;
global.particleSystem = part_system_create();
part_system_depth(global.particleSystem, 999 );
Particles();
randomize();

