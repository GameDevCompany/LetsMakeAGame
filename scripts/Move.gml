if(bubbled) {
  horizontalAxis = 0;
  verticalAxis = -0.1;
}

horizontalSpeed *= 0.2;
horizontalSpeed += movementSpeed * horizontalAxis;

if(!grounded) {
  movementSpeed = 3;
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
} else {
  movementSpeed = 6;
}
if(attackKeyHold) {
  horizontalSpeed *= 0.1;
  verticalSpeed *= 0.1;
}
