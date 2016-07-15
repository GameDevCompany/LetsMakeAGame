var timeToIncreaseJump = 300000;
if(hit) {
  lastTouchedGround = 0;
  lastGroundSpeed = 0;
}

if(jumpKeyPressed && grounded) {
  lastTouchedGround = global.time;
  with(groundObject) {
    if(verticalSpeed < other.verticalSpeed) {
      other.verticalSpeed = verticalSpeed;
    }
  }
}

if(lastTouchedGround + timeToIncreaseJump > global.time) {
  if(jumpKeyHeld) {
    verticalSpeed += -jumpSpeed;
  } else {
    lastTouchedGround = 0;
  }
}

if(grounded) {
  lastGroundSpeed = horizontalSpeed;
}

