var character = FindClosestCharacter();
if(character != noone) {
  var character_direction = point_direction(x,y,character.x,character.y);
  var ang =  angle_difference(dir,character_direction);
  dir -= min(abs(ang), 2) * sign(ang);
  
  var pos = MoveTowards(dir,1);  
  
  if(timer < global.time && !dashing ) {
    dashing = true;
    dash_angle = point_direction(x,y,character.x,character.y);
  }


  horizontalSpeed = pos[0] * enemySpeed;
  verticalSpeed = pos[1] * enemySpeed;
  
  
} else {
  horizontalSpeed = 0;
  verticalSpeed = 0;
}
if(dashing) {
  EnemyDash(character);
}

FlipObject();
Translate();
