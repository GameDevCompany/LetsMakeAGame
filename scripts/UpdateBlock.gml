if(global.gameMode == "Last") {
  if(isFallable) {
    Fall();
  }
  if(verticalSpeed == maxVerticalSpeed) {
    var inst = instance_place(x, y+verticalSpeed, obj_character);
    if(inst != noone) {
      dealDamage(inst,1,inst.index,x,y);
    }
  
  }
  
  Collision(rootObject,false,true);
}
Translate();

if(falling) {
  if(y > view_hview[0] + view_yview[0]) {
    instance_destroy();
  }
}




