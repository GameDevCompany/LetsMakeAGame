var timeToIncreaseJump = 250000;

if(grounded) {
  verticalSpeed = jumpKeyPressed * -jumpSpeed;
  lastTouchedGround = global.time;
} 

if(lastTouchedGround + timeToIncreaseJump > global.time) {
  if(jumpKeyPressed) {
    verticalSpeed = -jumpSpeed * 5;
  } else {
    lastTouchedGround = 0;
  }
}

//Set rotation speed when not grounded
if(!grounded) {
  rotationSpeed -= horizontalSpeed * 3;
} else {
  rotationSpeed = 0;
}
image_angle = rotationSpeed * global.timeScale;
