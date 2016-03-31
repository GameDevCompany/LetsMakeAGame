//Reset if grounded
grounded = false;

//Apply gravity if terminal velocity has been reached
if(verticalSpeed < 20) {
  verticalSpeed += grav;
}
