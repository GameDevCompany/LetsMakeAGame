var timeToIncreaseJump = 0;
if(jumpKeyPressed && grounded) {
  lastTouchedGround = global.time;
  jumpSpeed = jumpPower;
  verticalSpeed -= jumpSpeed;
}

if(jumpSpeed >= 0 && !grounded) { 
  if(jumpKeyHeld && lastTouchedGround + 200000 > global.time) {
      jumpSpeed = jumpPower;
  }
  if((verticalSpeed - (jumpSpeed*0.9)) < 0) {
    jumpSpeed *= 0.9;
    verticalSpeed -= jumpSpeed;
  } else {
    jumpSpeed *= 0.6;
    verticalSpeed -= jumpSpeed;
  }

}
