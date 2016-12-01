var object = argument0;
var dir = CheckCollisionDirection(object);
if(bubbled) {
  if(dir[0] != 0) {
    bounceX = round(dir[0]*8);
  }
}
if(dir[1] != 0) {
  bounceY = round(dir[1]*8);
}
