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
    
