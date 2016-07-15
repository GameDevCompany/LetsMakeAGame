
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
  verticalSpeed = -5;
}

if(verticalSpeed == maxVerticalSpeed) {
  var inst = instance_place(x, y+verticalSpeed, obj_character);
  if(inst != noone) {
    with(inst) {
      KillCharacter();
    }
  }
}

Collision(rootObject,false,true,false);
Translate()
