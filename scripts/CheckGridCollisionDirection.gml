///CheckGridCollisionDirection(object);
var object = argument0;
var dir;
dir[0] = 0;
dir[1] = 0;

var x_left = floor(x / grid_block_size)*grid_block_size;
var y_top = floor(y / grid_block_size)*grid_block_size;
var x_right  = x_left + grid_block_size;
var y_bottom = y_top + grid_block_size;

var bx = 0;
var objectCollided = collision_rectangle( x_left+3, y_top, x_right+3, y_bottom, object, true, true );

if(objectCollided != noone) {
  bx += 1;
}
objectCollided = collision_rectangle( x_left-3, y_top, x_right-3, y_bottom, object, true, true );
if(objectCollided != noone) {
  bx += -1;
}
dir[0] = bx;


var by = 0;
objectCollided = collision_rectangle( x_left, y_top+3, x_right, y_bottom+3, object, true, true );
if(objectCollided != noone) {
  by += 1;
}
objectCollided = collision_rectangle( x_left, y_top-3, x_right, y_bottom-3, object, true, true );
if(objectCollided != noone) {
  by += -1;
}
dir[1] = by;

return dir;
