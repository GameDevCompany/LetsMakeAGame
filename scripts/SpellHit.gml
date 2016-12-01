image_xscale = attackPower*4;
image_yscale = attackPower*4;


attackPower -= 0.08;
particleSize = clamp(attackPower,0,1);
part_type_alpha2(global.spellParticles, 0.5, 0);
part_type_size(global.spellParticles,particleSize,attackPower, 0, 0.2);
part_type_colour1(global.spellParticles, color);
part_particles_create(global.particleSystem, x, y, global.spellParticles, 5);

var inst = instance_place(x, y, obj_collidable);
if(inst != noone && inst != owner) {
  //particleSize -= 0.1;
  if(attackPower <= 0) {
    instance_destroy();
  } else {
    with(inst) {
      
      BreakBlock();
    }
  }


}
