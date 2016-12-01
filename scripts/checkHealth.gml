if(HP <= 0 && alive) {
  KillCharacter();
}

if(!alive && timeOfDeath + 5000000  < get_timer()) {
  if(global.gameMode != "Last") {
    ResetCharacter();
  }
}

