var character = FindClosestCharacter();
if(character != noone) {
  var dir = MoveTowards(point_direction(x,y,character.x,character.y),1);  
  horizontalSpeed = dir[0] * enemySpeed;
  verticalSpeed = dir[1] * enemySpeed;
} else {
  horizontalSpeed = 0;
  verticalSpeed = 0;
}

