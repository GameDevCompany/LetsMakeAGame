horizontalSpeed *= 0.5;
horizontalSpeed += movementSpeed * horizontalAxis;
if(horizontalSpeed < 1 && horizontalSpeed > -1) {
  horizontalSpeed = 0;
}
