if(global.inGame) {
  ResetState();
  if(alive) {
    GetControlsGamepad();
    timeout();
    if(bubbled) {
      if(bubbledTime + 2000000 < global.time) {
        bubbled = false;
      }
    }
    CastSpell();
    Move();
    
    if(horizontalAxis < -0.2 ) {
      SetState("falling_left",false);
    } else if(horizontalAxis > 0.2 ) {
      SetState("falling_right",false);
    }
    
    
    if(verticalAxis < -0.1) {
      SetState("hover",false);
    }
    Translate();
  }
}
