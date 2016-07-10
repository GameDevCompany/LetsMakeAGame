var object = argument0;

//Check if grounded
var inst = collision_rectangle( bbox_left+horizontalSpeed, bbox_bottom+verticalSpeed, bbox_right+horizontalSpeed, bbox_bottom+verticalSpeed+1, object, true, true );
if (inst != noone) {
  grounded = true;
  groundObject = inst;
} else {
   grounded = false;
}
return grounded;
