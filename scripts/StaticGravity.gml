//Apply gravity if terminal velocity has been reached
if(verticalSpeed < maxVerticalSpeed) {
  verticalSpeed += (16-GetLevelSpeed());
} else {
  verticalSpeed = maxVerticalSpeed;
}
