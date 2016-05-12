var inst = argument0;
var dmg = argument1;
var playerIndex = argument2;
var posX = argument3;
var posY = argument4;
if (inst != noone) {
   with(inst) {
      if(object_get_name(object_index) == "obj_character") {
        HP -= dmg;
        if(HP <= 0) {
          global.scores[playerIndex] += 1;
        }
        damageColor = 255;
        repeat(50)
        {
          part_particles_create(global.particleSystem, x, y, global.bloodParticles, 1);
        }
        verticalSpeed = (y - posY);
        horizontalSpeed = (x - posX);
      }
   }
}
