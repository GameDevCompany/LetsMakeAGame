if(global.inGame) {
  if(state != characterStates.dead) {
    GetControlsGamepad(); //Gets movement input from gamepad
    //Gravity(); //Applies gravity
    verticalSpeed *= 0.5;
    if(verticalSpeed >= maxVerticalSpeed) {
      verticalSpeed = maxVerticalSpeed;
    }
    
    
    Jump();
    Translate();
  }
}
