var inst = argument0;
var dmg = argument1;
var playerIndex = argument2;
var posX = argument3;
var posY = argument4;
var didDamage = false;
if (inst != noone) {
   with(inst) {
      if(object_get_name(object_index) == "obj_character") {
        HP -= dmg;
        didDamage = true;
        if(HP <= 0) {
          global.scores[playerIndex] += 1;
        }
        damageColor = 255;
        /*repeat(50)
        {
          part_particles_create(global.particleSystem, x, y, global.bloodParticles, 1);
        }*/
        
        var flipX = 180 * ((other.image_xscale*0.5)-0.5);
        var dash = MoveTowards(other.image_angle + flipX + (10*other.image_xscale), 40);
        horizontalSpeed += dash[0];
        verticalSpeed += dash[1];
        
      }
   }
}

return didDamage;
