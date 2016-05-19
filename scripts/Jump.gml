var timeToIncreaseJump = 500000;
if(hit) {
  lastTouchedGround = 0;
  lastGroundSpeed = 0;
}
if(jumpKeyPressed && grounded) {
  lastTouchedGround = global.time;
}
if(lastTouchedGround + timeToIncreaseJump > global.time) {
  if(jumpKeyHeld) {
    verticalSpeed = -jumpSpeed;
  } else {
    lastTouchedGround = 0;
  }
}
//Set rotation speed when not grounded
if(!grounded) {
  if(characterType != "elemental") {
    rotationSpeed = horizontalSpeed * 3;
  }
  horizontalSpeed = (lastGroundSpeed*0.5) + (horizontalSpeed *0.5);
} else {
  lastGroundSpeed = horizontalSpeed;
  rotationSpeed = 0;
  image_angle = 0;
}

