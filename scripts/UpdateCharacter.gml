if(global.selectCharacters) {
  selectCharacter();
} else if(global.inGame) {
  CheckHealth();
  if(state != characterStates.dead) {
    x = xprevious;
    y = yprevious;
    Collision(obj_collidable,true,true); //Checks for Collision
    Smash();
    grounded = IsGrounded(obj_collidable);
   
    Pickup();
    //Rotate(horizontalSpeed,grounded);
    HandleAnimation();
    Attack();

    Translate();
  }
}
