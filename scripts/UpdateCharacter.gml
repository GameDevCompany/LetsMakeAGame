if(global.selectCharacters) {
  SelectCharacter();
} else if(global.inGame) {
  ApplyPowerUp(true);
  if(alive) {
    //x = xprevious;
    //y = yprevious;
    //CheckBounce(obj_collidable);
    
    if(!CheckBlockBreak(obj_collidable)) {
        bounceX = 0;
        bounceY = 0;
    }
    
    
    if(grounded) {
      verticalSpeed -= global.lvlspd;
    }
    var colObject = Collision(obj_collidable);
    var extObject = CollisionExtract(obj_collidable);

    //AddBounceSpeed();
    
    
    if(!bubbled) {
      var dir = CheckCollisionDirection(rootBlock);
      if(dir[0] == 1 && horizontalAxis < -0.2 ) {
        SetState("slide_left",false);
        verticalSpeed += -1;
        part_particles_create(global.particleSystem, bbox_right-5, y, global.trailParticles, 1);
        part_particles_create(global.particleSystem, bbox_left+5, y, global.trailParticles, 1);
      } else if(dir[0] == -1 && horizontalAxis > 0.2 ) {
        SetState("slide_right",false);
        verticalSpeed += -1;
        part_particles_create(global.particleSystem, bbox_right-5, y, global.trailParticles, 1);
        part_particles_create(global.particleSystem, bbox_left+5, y, global.trailParticles, 1);
      }
    }

    Translate();
        
    grounded = IsGrounded(obj_collidable);
    if(grounded) {
      lastGround = y;
      verticalSpeed = 0;
      SetState("grounded",false);
      global.lvlspd = 1;
    } else {
    
     if(y > lastGround) {
        global.lvlspd = 8;
        lastGround = 0;
     } else {
        verticalSpeed += 40;
        global.lvlspd = 1;
     }

    }
    
   

    HandleAnimation();
    if(verticalSpeed > 0) {
      part_particles_create(global.particleSystem, bbox_right-5, y, global.trailParticles, 1);
      part_particles_create(global.particleSystem, bbox_left+5, y, global.trailParticles, 1);
    }
    KeepInFrame(true, false);
  }
}
