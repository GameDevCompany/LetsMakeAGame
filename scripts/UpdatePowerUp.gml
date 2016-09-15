var objectCollided = Collision(obj_collidable);
var objectExtracted = CollisionExtract(obj_collidable);
if(objectCollided != noone) {
  if(objectCollided.object_index == obj_character) {
    with(objectCollided) {
      powerUpTime = global.time;
      powerUpCoolDown = other.powerUpCoolDown;
      powerUpName = other.powerUpName;
      ApplyPowerUp(true);
    }
    instance_destroy();
  }
}

if(objectExtracted != noone) {
  if(objectExtracted.object_index == obj_character) {
    with(objectExtracted) {
      powerUpCoolDown = other.powerUpCoolDown;
      powerUpName = other.powerUpName;
      ApplyPowerUp(true);
    }
    instance_destroy();
  }
}

Translate();

