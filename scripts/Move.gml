if(bubbled) {
  horizontalAxis = 0;
  verticalAxis = -0.1;
}

horizontalSpeed *= 0.2;
horizontalSpeed += movementSpeedHor * horizontalAxis;

if(!grounded) {
  lastGroundSpeed *= 0.99;
  if(verticalSpeed > 0) {
    verticalSpeed *= 0.2;
  }else {
    verticalSpeed *= 0.5;
  }
  verticalSpeed += verticalAxis * movementSpeedVer;
  if(verticalSpeed >= maxVerticalSpeed) {
    verticalSpeed = maxVerticalSpeed;
  }
} 
if(attackKeyHold) {
  horizontalSpeed *= 0.1;
  verticalSpeed *= 0.1;
}
