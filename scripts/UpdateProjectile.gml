var destroy = false;
var move = MoveTowards(direction,spd);
horizontalSpeed = move[0];
verticalSpeed = move[1];

CleanObjects();
verticalSpeed -= GetLevelSpeed();
if(hitEnemies) {
  var isHit = HitEnemy();
  if(isHit) {
    destroy = true;
  }
}
if(hitCharacters) {
  var isHit = HitCharacter();
  if(isHit) {
    destroy = true;
  }
}

if(hitBlocks) {
  var isHit = HitBlock(destroyBlocks);
  if(isHit) {
    destroy = true;
  }
}

if(destroy) {
  instance_destroy();
}

Translate();
