var object = argument0;
var grounded = false;
var inst = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, object, true, true );
if (inst != noone) {
  grounded = true;
}
return grounded;
