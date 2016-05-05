var timeToIncreaseJump = 500000;

if(hit) {
  lastTouchedGround = 0;
}

if(grounded) {
  //verticalSpeed = jumpKeyPressed * -jumpSpeed;
  lastTouchedGround = global.time;
}

if(lastTouchedGround + timeToIncreaseJump > global.time) {
  if(jumpKeyPressed) {
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
} else {
  rotationSpeed = 0;
  image_angle = 0;
}

