//Apply gravity if terminal velocity has been reached
if(verticalSpeed < maxVerticalSpeed) {
  if(verticalSpeed > 0) {
    verticalSpeed += (global.grav*2*global.timeScale);
  } else {
    verticalSpeed += (global.grav*global.timeScale);
  }
} else {
  verticalSpeed = maxVerticalSpeed;
}
