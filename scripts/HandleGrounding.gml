grounded = IsGrounded(obj_collidable);
if(grounded) {
  lastGround = y;
  verticalSpeed = 0;
  SetState("grounded",false);
  SetLevelSpeed(0);
  isFalling = false;
} else {
 if(y >= lastGround && lastGround != 0) {
    SetLevelSpeed(16);
    lastGround = 0;
    isFalling = true;
 } else if (y < lastGround && lastGround != 0) {
    verticalSpeed += 90;
    SetLevelSpeed(0);
    isFalling = false;
 }
}
    
