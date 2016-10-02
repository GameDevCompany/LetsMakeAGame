if(global.selectCharacters) {
  SelectCharacter();
} else if(global.inGame) {
  ApplyPowerUp(true);
  CheckHealth();
  if(alive) {
    x = xprevious;
    y = yprevious;
    var thing = Collision(obj_collidable);
    var thing2 = CollisionExtract(obj_collidable);
    Translate();
    HandleAnimation();
    if(verticalSpeed > 0) {
      part_particles_create(global.particleSystem, bbox_right-5, y, global.trailParticles, 1);
      part_particles_create(global.particleSystem, bbox_left+5, y, global.trailParticles, 1);
    }
  }
}
