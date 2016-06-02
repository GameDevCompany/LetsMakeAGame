if(HP <= 0 && state != characterStates.dead) {
  KillCharacter();
}
if(y > room_height + 64 && state != characterStates.dead) {
  KillCharacter();
  show_debug_message("character died");
} 


if(state == characterStates.dead && timeOfDeath + 5000000  < get_timer()) {
  if(global.gameMode != "Last") {
    ResetCharacter();
  }
}


