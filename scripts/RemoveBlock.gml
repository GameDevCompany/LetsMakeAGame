x_mouse = argument0;
y_mouse = argument1;

var mx = floor(x_mouse / grid_block_size);
var my = floor(y_mouse / grid_block_size);
if(currentLevel[# mx,my] != 0) {
  var inst = levelObjects[# mx,my];
  with(inst) {
    instance_destroy();
  }
  levelObjects[# mx,my] = noone;
  currentLevel[# mx,my] = 0;
}
