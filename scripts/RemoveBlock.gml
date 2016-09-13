x_mouse = argument0;
y_mouse = argument1;

var mx = floor(x_mouse / 32);
var my = floor(y_mouse / 32);
if(currentLevel[# mx,my] != 0) {
  var inst = levelObjects[# mx,my];
  with(inst) {
    instance_destroy();
  }
  levelObjects[# mx,my] = noone;
  currentLevel[# mx,my] = 0;
}
