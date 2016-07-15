if(HP <= 0 && alive) {
  KillCharacter();
}
if(y > room_height + 64 && alive) {
  KillCharacter();
  show_debug_message("character died");
} 

if(!alive && timeOfDeath + 5000000  < get_timer()) {
  if(global.gameMode != "Last") {
    ResetCharacter();
  }
}


