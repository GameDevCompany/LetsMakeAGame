//Reset if grounded
grounded = false;
//Apply gravity if terminal velocity has been reached
maxVerticalSpeed = 20;
if(verticalSpeed < maxVerticalSpeed) {
  verticalSpeed += global.grav;
}
