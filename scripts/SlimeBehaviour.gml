var character = FindClosestCharacter();

image_angle = slime_angle;

if(jump) {
  SetState("flying",false);
}

if(!init_slime) {
  if(neighbours[0] != 0) {
    SetSlimeAngle(90);
  } else if(neighbours[1] != 0) {
    SetSlimeAngle(270);
  } else if(neighbours[2] != 0) {
    SetSlimeAngle(0);
  } else if(neighbours[3] != 0) {
    SetSlimeAngle(180);
  }
  direction = slime_angle;
  init_slime = true;
}



if(character != noone) {
  if(timer < global.time) {
    timer = global.time + random_range(250000,500000);
    
    var options;
    options[0] = choose(slime_angle,slime_angle-180);
    var character_direction = point_direction(x,y,character.x,character.y);
    var po = angle_difference(slime_angle,character_direction);
    var pd = angle_difference(slime_angle-180,character_direction); 
    
    if(abs(po) < abs(pd)) {
      options[1] = slime_angle;
    } else {
      options[1] = slime_angle-180;
    }
    movement_direction = options[irandom_range(0,array_length_1d(options)-1)];
  }
  



  
  if(jump_timer < global.time && !jump) {
    jump_timer = global.time + random_range(1000000,5000000);
    SetState("jump",true);
    jump = true;
    jump_direction = MoveTowards(slime_angle+90,1);
  } else {
    if(!jump) {
      jump_direction[0] = 0;
      jump_direction[1] = 0;
    }
  }
  if(jump) {
    if(state != "jump") {
      horizontalSpeed =  jump_direction[0]*enemySpeed*2;
      verticalSpeed = (jump_direction[1]*enemySpeed*2)+2;
    }
  } else {
    var move_direction = MoveTowards(movement_direction,1);
    horizontalSpeed =  move_direction[0]*enemySpeed;
    verticalSpeed =  move_direction[1]*enemySpeed;
    if(y+verticalSpeed > view_hview[global.gameview] || y+verticalSpeed < view_yview[global.gameview]) {
      verticalSpeed = 0;
    }
  }
} else {
  horizontalSpeed = 0;
  verticalSpeed = 0;
}


Collision(obj_collidable);
CollisionExtract(obj_collidable);
var dir = CheckCollisionDirection(obj_collidable);
if(dir[0] == 1 && slime_angle != 270) {
  SetSlimeAngle(270);
  jump = false;
  jump_timer = global.time + random_range(1000000,5000000);
} else if(dir[0] == -1 && slime_angle != 90) {
  SetSlimeAngle(90);
  jump = false;
  jump_timer = global.time + random_range(1000000,5000000);
} else if(dir[1] == 1 && slime_angle != 180) {
  SetSlimeAngle(180);
  jump = false;
  jump_timer = global.time + random_range(1000000,5000000);
} else if(dir[1] == -1 && slime_angle != 0) {
  SetSlimeAngle(0);
  jump = false;
  jump_timer = global.time + random_range(1000000,5000000);
} else {
  //If not attached to wall... and not jump
  if(!jump) {
    if(dir[0] == 0 && dir[1] == 0) {
      if(slime_angle == 270) {
        if(verticalSpeed > 0) {
          SetSlimeAngle(180);
          horizontalSpeed = -16;
        } else if(verticalSpeed < 0) {
          SetSlimeAngle(0);
          horizontalSpeed = -16;
        }
      } else if(slime_angle == 90) {
        if(verticalSpeed > 0) {
          SetSlimeAngle(180);
          horizontalSpeed = 16;
        } else if(verticalSpeed < 0) {
          SetSlimeAngle(0);
          timer = 0;
          horizontalSpeed = 16;
        }
      } else if(slime_angle == 180) {
        if(horizontalSpeed > 0) {
            SetSlimeAngle(270);
            verticalSpeed = -16;
        } else if(horizontalSpeed < 0) {
          SetSlimeAngle(90);
          verticalSpeed = -16;
        }
      } else if(slime_angle == 0) {
        if(horizontalSpeed > 0) {
          SetSlimeAngle(270);
          verticalSpeed = 16;
        } else if(horizontalSpeed < 0) {
          SetSlimeAngle(90);
          verticalSpeed = 16;
        }
      }
    }
  } 
}

Translate();
HandleSlimeAnimation();


