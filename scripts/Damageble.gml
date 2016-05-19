//show_debug_message("frame");
var inst = instance_place(x+horizontalSpeed, y+verticalSpeed, all);
var didDamage = doDamage(inst,dmg,playerIndex,x,y);
if(didDamage) {
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
