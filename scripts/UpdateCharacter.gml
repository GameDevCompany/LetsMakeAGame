if(global.selectCharacters) {
  SelectCharacter();
} else if(global.inGame) {
  CheckHealth();
  if(alive) {
    x = xprevious;
    y = yprevious;

    Collision(obj_collidable,true,true,true);
    grounded = IsGrounded(obj_collidable);

    if(grounded) {
      SetState("idle",false);
      if(horizontalSpeed > 0.2 || horizontalSpeed < -0.2) {
          SetState("running",false);
      }

    }
    
    
    Jump();
    //Smash();

    Pickup();
    //Rotate(horizontalSpeed,grounded);
    Translate();
    HandleAnimation();
    
    if(verticalSpeed > 0) {
      part_particles_create(global.particleSystem, bbox_right, y, global.trailParticles, 1);
      part_particles_create(global.particleSystem, bbox_left, y, global.trailParticles, 1);
    } else  {
      part_particles_create(global.particleSystem, bbox_right, y, global.trailParticles2, 1);
      part_particles_create(global.particleSystem, bbox_left, y, global.trailParticles2, 1);
    }
  }
}
