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
global.particleSystem = part_system_create();
part_system_depth(global.particleSystem, 100000 );
global.lvlspd = 0;
global.inGame = false;
global.selectCharacters = true;
global.gameMode = "Last";
global.hwrap = false;
global.vwrap = false;
global.takeDamage = true;
display_set_gui_size(640 , 480);
Particles();
randomize();

