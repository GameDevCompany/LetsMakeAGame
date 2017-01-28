
var character = FindClosestCharacter();
if(character != noone) {
  if(IsGrounded(root_block)) {
    var inst = collision_point(x +(70*dir),y-36,root_block,true,false);
    if(inst != noone) {
      dir *= -1;
    }
    
    var inst = collision_point(x +(70*dir),y+36,root_block,true,false);
    if(inst == noone) {
      dir *= -1;
    }
    
    horizontalSpeed = dir * enemySpeed;
  } else {
    horizontalSpeed *= 0.99;
  }
} else {
 horizontalSpeed = 0;
 verticalSpeed = 0;

}
StaticGravity();

Collision(root_block);

FlipObject();
Translate();

