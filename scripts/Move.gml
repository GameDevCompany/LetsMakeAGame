horizontalSpeed *= 0.2;
horizontalSpeed += movementSpeedHor * horizontalAxis;
if(verticalSpeed > 0) {
  verticalSpeed *= 0.2;
}else {
  verticalSpeed *= 0.5;
}

if(y < view_hview[global.gameview]*0.1) {
  verticalSpeed += 1;
}

verticalSpeed += verticalAxis * movementSpeedVer;
if(verticalSpeed >= maxVerticalSpeed) {
  verticalSpeed = maxVerticalSpeed;
}
