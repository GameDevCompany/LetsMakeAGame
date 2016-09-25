if(global.inGame) {

  ResetState();
  if(alive) {
    GetControlsGamepad();
    Timeout();
    Bubbled();
    CastSpell();
    Move();
    
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
    
    var thing = Collision(obj_collidable);
    var thing2 = CollisionExtract(obj_collidable);
    Translate();
  }
} else {
}
