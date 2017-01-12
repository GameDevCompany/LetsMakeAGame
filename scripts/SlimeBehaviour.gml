var character = FindClosestCharacter();

image_angle = slime_angle;

if(!init_slime) {
  if(neighbours[0] != 0) {
    slime_angle = 90;
  } else if(neighbours[1] != 0) {
    slime_angle = 270;
  } else if(neighbours[2] != 0) {
    slime_angle = 0;
  } else if(neighbours[3] != 0) {
    slime_angle = 180;
  }
  direction = slime_angle;
  init_slime = true;
}

if(timer < global.time) {
  timer = global.time + random_range(1000000,2000000);
  direction = choose(slime_angle,slime_angle-180);
}

if(character != noone) {
  var grav_direction = MoveTowards(slime_angle-90,1);
  var move_direction = MoveTowards(direction,1);
  horizontalSpeed = enemySpeed * move_direction[0];
  verticalSpeed = enemySpeed * move_direction[1];
  horizontalSpeed += (16-GetLevelSpeed())*grav_direction[0];
  verticalSpeed += (16-GetLevelSpeed())*grav_direction[1];
} else {
  horizontalSpeed = 0;
  verticalSpeed = 0;
}


Collision(obj_collidable);
var dir = CheckCollisionDirection(root_block);

Translate();


