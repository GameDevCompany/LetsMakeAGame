if(!grounded) {
  rotationSpeed = horizontalSpeed * 3;
  sprite_angle -= rotationSpeed * global.timeScale;
} else {  
  rotationSpeed = 0;
  sprite_angle = 0;
}
