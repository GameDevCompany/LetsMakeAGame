//Reset if grounded
grounded = false;
//Apply gravity if terminal velocity has been reached
if(verticalSpeed < maxVerticalSpeed) {
  verticalSpeed += (global.grav*global.timeScale);
}
