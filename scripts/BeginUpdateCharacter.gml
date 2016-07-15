if(global.inGame) {
  ResetState();
  if(alive) {
    GetControlsGamepad(); //Gets movement input from gamepad
    //Set here anything that changes position
    
    //Gravity(); 
    Attack();
    Move();


  
    //Initial movement of object
    //Collision(obj_collidable,true,true,true); //Checks for Collision
    Translate();
  }
}
