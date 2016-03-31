var gamepads_available = gamepad_get_device_count();
var selectedGamepad = -100;
/*
i = i + 1;
i++;
i += 1;
*/

for(var i = 0;i < gamepads_available && selectedGamepad == -100;i++;) {
    if(!global.gamepadTaken[i] && global.gamepadConnected[i]) {
      global.gamepadTaken[i] = true;
      selectedGamepad = i;
    }
}

return selectedGamepad;
