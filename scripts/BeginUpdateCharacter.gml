if(global.inGame) {
  ResetState();
  if(alive) {
    GetControlsGamepad(); //Gets movement input from gamepad
    //Set here anything that changes position
    timeout();
    if(bubbled) {
      if(bubbledTime + 6000000 < global.time) {
        bubbled = false;
      }
      SetState("idle",false);
    }

    if(verticalAxis < -0.1) {
      SetState("hover",false);
    }

    //Gravity(); 
    //Attack();
    CastSpell();
    Move();
  
    //Initial movement of object
    //Collision(obj_collidable,true,true,true); //Checks for Collision
    Translate();
  }
}
