global.players = noone;
var gamepads_available = gamepad_get_device_count();
for(var i = 0;i < gamepads_available;i++;) {
  global.gamepadConnected[i] = gamepad_is_connected(i);
  global.gamepadTaken[i] = false;
}
global.time = 0;
global.timeScale = 1;
global.lastIndex = 0;
global.grav = 1.981;
global.lvlspd = 0;
global.particleSystem = part_system_create();
part_system_depth(global.particleSystem, 999 );

global.inGame = false;
global.selectCharacters = true;
global.gameMode = "Last";

global.takeDamage = true;

Particles();
randomize();

