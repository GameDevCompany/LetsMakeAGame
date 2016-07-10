rotationSpeed = argument0;
reset = argument1;
if(!reset) {
  sprite_angle -= rotationSpeed * global.timeScale;
} else {  
  sprite_angle = 0;
}
