var object = argument0;
var dir;
dir[0] = 0;
dir[1] = 0;


var bx = 0;
var objectCollided = instance_place(x+3,y,object);
if(objectCollided != noone) {
  bx += -1;
}
objectCollided = instance_place(x-3,y,object);
if(objectCollided != noone) {
  bx += 1;
}
dir[0] = bx;

var by = 0;
objectCollided = instance_place(x,y-3,object);
if(objectCollided != noone) {
  by += 1;
}
objectCollided = instance_place(x,y+3,object);
if(objectCollided != noone) {
  by += -1;
}
dir[1] = by;


return dir;
