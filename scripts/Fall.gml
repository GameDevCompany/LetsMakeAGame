var inst = instance_place(x, y-1, obj_collidable);
if (inst != noone) { 
  with(inst) {
    if(object_get_name(object_index) == "obj_character") {
      other.stepped = true;
    } else {
      if(falling) {
        other.stepped = true;
      }
    }
  }

}
if(stepped) {
  stepTimer += global.timeScale * delta_time;
  part_type_colour1(global.crumbleParticles, color);
  part_particles_create(global.particleSystem, x+random_range(0,32), y+32, global.crumbleParticles,1);
}
if(stepTimer > 1000000) {
  falling = true;
  stepped = false;
}
if(falling) {
  Gravity();
}
