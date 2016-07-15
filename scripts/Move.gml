horizontalSpeed *= 0.5;
horizontalSpeed += movementSpeed * horizontalAxis;

if(!grounded) {
  lastGroundSpeed *= 0.99;
  horizontalSpeed = (lastGroundSpeed*0)+(horizontalSpeed *1);
  if(verticalSpeed > 0) {
    verticalSpeed *= 0.2;
  }else {
    verticalSpeed *= 0.5;
  }
  verticalSpeed += verticalAxis * movementSpeed;
  if(verticalSpeed >= maxVerticalSpeed) {
    verticalSpeed = maxVerticalSpeed;
  }
}
