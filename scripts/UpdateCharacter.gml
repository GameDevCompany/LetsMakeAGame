if(global.selectCharacters) {
  selectCharacter();
} else if(global.inGame) {
  CheckHealth();
  if(state != characterStates.dead) {
    Gravity(); //Applies gravity
    Jump();
    Pickup();
    Collision(obj_collidable,true,true); //Checks for Collision
    grounded = IsGrounded(obj_collidable);
    Rotate(horizontalSpeed,grounded);
    HandleAnimation();
    Attack();
    Translate();
  }
}
