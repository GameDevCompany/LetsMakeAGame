
if(global.gameMode == "Last") {
  if(isEventBlock) {
    if(y < view_yview[0] - 36) {
      mask_index = temp_mask;
      falling = true;
      isFallable = true;
      visible = true;
    }
  }
  
  if(isFallable) {
    Fall();
  }
  
  if(!falling) {
    verticalSpeed = -10;
  }

  if(verticalSpeed == maxVerticalSpeed) {
    var inst = instance_place(x, y+verticalSpeed, obj_character);
    if(inst != noone) {
      with(inst) {
        KillCharacter();
      }
      //dealDamage(inst,1,inst.index,x,y);
    }
  }
  Collision(rootObject,false,true);
}

Translate();

if(falling) {
  if(y > view_hview[0] + view_yview[0] + 36) {
    instance_destroy();
  }
}




