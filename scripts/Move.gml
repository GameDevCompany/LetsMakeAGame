horizontalSpeed *= 0.2;
horizontalSpeed += movementSpeedHor * horizontalAxis;
if(grounded) {
  horizontalSpeed += movementSpeedHor * horizontalAxis * 0.5;
}

if(verticalSpeed > 0) {
  verticalSpeed *= 0.2;
}else {
  verticalSpeed *= 0.5;
}
if(isFalling) {
  if(y < view_hview[global.gameview]*0.1) {
    verticalSpeed += 2;
  }
  
  if(y > view_hview[global.gameview]*0.8) {
    verticalSpeed -= 2;
  }
  verticalSpeed += verticalAxis * movementSpeedVer;
  if(verticalSpeed >= maxVerticalSpeed) {
    verticalSpeed = maxVerticalSpeed;
  }
}

