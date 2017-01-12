if(global.selectCharacters) {
  SelectCharacter();
} else if(global.inGame) {
  ApplyPowerUp(true);
  if(alive) {
    CheckBlockBreak(obj_collidable);
    var colObject = Collision(obj_collidable);

    var dir = CheckCollisionDirection(root_block);
    if(dir[0] == 1 && horizontalAxis < -0.2 ) {
      SetState("slide_left",false);
      SetLevelSpeed(8);
      part_particles_create(global.particleSystem, bbox_left, y, global.trailParticles, 1);
    } else if(dir[0] == -1 && horizontalAxis > 0.2 ) {
      SetState("slide_right",false);
      SetLevelSpeed(8);
      part_particles_create(global.particleSystem, bbox_right, y, global.trailParticles, 1);
    } else {
      if(prevstate == "slide_left" || prevstate == "slide_right") {
        SetLevelSpeed(16);
      }
    }

    Translate();
    HandleGrounding();
    HandleAnimation();
    
    if(verticalSpeed > 0.2 && lastGround == 0) {
      part_particles_create(global.particleSystem, bbox_right-5, y, global.trailParticles, 1);
      part_particles_create(global.particleSystem, bbox_left+5, y, global.trailParticles, 1);
    }
    
    KeepInFrame(true, false);
  } else {
    SetLevelSpeed(0);
  }
}
