if(grounded) {
  verticalSpeed = jumpKeyPressed * -jumpSpeed
}
//Set rotation speed when not grounded
if(!grounded) {
  rotationSpeed -= horizontalSpeed * 3;
} else {
  rotationSpeed = 0;
}
image_angle = rotationSpeed;
