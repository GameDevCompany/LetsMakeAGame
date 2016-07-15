timeOfDeath = get_timer();
alive = false;
visible = false;
temp_mask = mask_index;
mask_index = nocollision;
bodyparts[0] = "head";
bodyparts[1] = "body";
bodyparts[2] = "arm";
bodyparts[3] = "arm";
bodyparts[4] = "leg";
bodyparts[5] = "leg";
horizontalSpeed = 0;
verticalSpeed = 0;
for(i = 0; i < array_length_1d(bodyparts); i++;) {
    with(instance_create(x,y,obj_bodypart)) {
      part = other.bodyparts[other.i];
      characterType = other.characterType;
      created_on = get_timer();
      if(other.characterType == "robot") {
        particleDelay = 0;
      }
    }
}

