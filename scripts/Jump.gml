var timeToIncreaseJump = 300000;
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
  if(characterType != "elemental" /*&& characterType != "robot"*/) {
    rotationSpeed = horizontalSpeed * 3;
  }
  lastGroundSpeed *= 0.99;
  horizontalSpeed =  (lastGroundSpeed*0)+(horizontalSpeed *1);
  if(verticalSpeed + 0.1 > maxVerticalSpeed) {
      verticalSpeed += upndown*movementSpeed;
  }
} else {
  lastGroundSpeed = horizontalSpeed;
  rotationSpeed = 0;
  image_angle = 0;
}

