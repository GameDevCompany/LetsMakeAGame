var timeToIncreaseJump = 300000;
if(jumpKeyPressed && grounded) {
  lastTouchedGround = global.time;
}
if(lastTouchedGround + timeToIncreaseJump > global.time) {
  if(jumpKeyHeld) {
    verticalSpeed += -jumpSpeed;
  } else {
    lastTouchedGround = 0;
  }
}

