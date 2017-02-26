if keyboard_check_pressed(ord("S"))
{
   screen_save(working_directory + "\Screens\Screen_"+string(num)+".png")
   num += 1;
}

if(keyboard_check_released(ord('R'))) {
  RestartGame();
}

if(keyboard_check_released(vk_escape)) {
  global.paused = !global.paused;
}

if(global.paused) exit;

global.time += global.timeScale * delta_time;


