//Apply gravity if terminal velocity has been reached
if(verticalSpeed < maxVerticalSpeed) {
  verticalSpeed +=(GetLevelSpeed()*0.7)+0.5;
} else {
  verticalSpeed = maxVerticalSpeed;
}
