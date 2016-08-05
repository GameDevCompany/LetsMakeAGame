
if(y < view_yview[0]) {
  timeOutside -= (global.timeScale * delta_time)/1000000;
} else {
  timeOutside = 3;
}
if(timeOutside <= 0) {
  KillCharacter();
}
