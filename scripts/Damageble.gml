var inst = instance_place(x+horizontalSpeed, y+verticalSpeed, obj_character);
if(inst != noone) {
  DealDamage(inst,dmg,playerIndex,x,y);
  instance_destroy();
}
if (inst != noone) {
  if(destroyInstance == 0) {
    destroyInstance = global.time + 5000000;
  }
}
if(global.time > destroyInstance && destroyInstance != 0) {
  instance_destroy();
}
