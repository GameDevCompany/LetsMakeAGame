//particle effects etc...
var instance = argument0;
with(instance) {
  repeat(irandom_range(2,5)) {
    with(instance_create(x,y,obj_crystal)) {
      grav = true;
      horizontalSpeed = random_range(-4,4);
      verticalSpeed = random_range(8,-16);
    }
  }


  instance_destroy();
}
