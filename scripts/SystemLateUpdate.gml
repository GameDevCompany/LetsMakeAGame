global.time += global.timeScale * delta_time;

if(keyboard_check_released(ord('R'))) {
  RestartGame();
}

if(keyboard_check_released(vk_escape)) {
  LoadRoom(rm_mainmenu);
}
