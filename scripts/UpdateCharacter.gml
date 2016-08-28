if(global.selectCharacters) {
  SelectCharacter();
} else if(global.inGame) {
  CheckHealth();
  if(alive) {
    x = xprevious;
    y = yprevious;
    Collision(obj_collidable,true,true);
    CollisionExtract(obj_collidable,true,true);
    Translate();
    HandleAnimation();
    if(verticalSpeed > 0) {
      part_particles_create(global.particleSystem, bbox_right-5, y, global.trailParticles, 1);
      part_particles_create(global.particleSystem, bbox_left+5, y, global.trailParticles, 1);

    }
  }
}
