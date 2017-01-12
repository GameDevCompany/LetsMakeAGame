var distance = noone;
var character = noone;
with(obj_character) {
  if(alive) {
    var check_distance = point_distance(x,y,other.x,other.y);
    if(check_distance < distance || distance == noone) {
      distance = check_distance;
      character = id;
    }
  }
}
//character = instance_nearest(x,y,obj_character);
return character;

