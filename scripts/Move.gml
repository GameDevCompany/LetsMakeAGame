horizontalSpeed *= 0.2;
horizontalSpeed += movementSpeedHor * horizontalAxis;

if(verticalSpeed > 0) {
  verticalSpeed *= 0.2;
}else {
  verticalSpeed *= 0.5;
}
verticalSpeed += verticalAxis * movementSpeedVer;
if(verticalSpeed >= maxVerticalSpeed) {
  verticalSpeed = maxVerticalSpeed;
}


