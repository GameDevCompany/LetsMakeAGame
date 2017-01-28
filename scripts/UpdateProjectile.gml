CleanObjects();
y -= GetLevelSpeed();
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
