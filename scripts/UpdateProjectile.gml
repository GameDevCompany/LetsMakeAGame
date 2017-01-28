var move = MoveTowards(direction,spd);
horizontalSpeed = move[0];
verticalSpeed = move[1];

CleanObjects();
verticalSpeed -= GetLevelSpeed();
if(hitEnemies) {
  var isHit = HitEnemy();
  if(isHit) {
    instance_destroy();
  }
}
if(hitCharacters) {
  var isHit = HitCharacter();
  if(isHit) {
    instance_destroy();
  }
}

if(hitBlocks) {
  var isHit = HitBlock(destroyBlocks);
  if(isHit) {
    instance_destroy();
  }
}


Translate();
