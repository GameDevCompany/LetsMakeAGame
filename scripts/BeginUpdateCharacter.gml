
ResetState();
if(alive) {
  y -= GetLevelSpeed();
  GetControlsGamepad();
  Timeout();
  CastSpell();
  Move();
  EnterDoor();

  if(grounded) {
    verticalSpeed = 0;
  } else {
    Gravity();
  }
  Jump();

  //Animation state
  if(horizontalAxis < -0.2 ) {
    SetState("falling_left",false);
  } else if(horizontalAxis > 0.2 ) {
    SetState("falling_right",false);
  }
  
  if(verticalAxis < -0.1) {
      if(horizontalAxis < -0.2 ) {
        SetState("hover_left",false);
      } else if(horizontalAxis > 0.2 ) {
        SetState("hover_right",false);
      } else {
        SetState("hover",false);
      }
  }
}

