
CleanObjects();

//image_angle += 4;
attackPower -= 0.08;

particleReduction = -particleSize*0.0025;

part_type_size(global.spellfill,particleSize,particleSize, particleReduction, 0.1);
part_type_size(global.spellinner,particleSize*0.75,particleSize*0.9, particleReduction, 0);
part_type_size(global.spelldark,particleSize*0.9,particleSize*0.9, 0, 0);

part_emitter_region(global.particleSystem,emitter,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);

part_particles_create(global.particleSystem, x, y, global.spellfill, 1);
part_particles_create(global.particleSystem, x, y, global.spellinner, 2);
part_particles_create(global.particleSystem, x, y, global.spelldark, 1);
part_emitter_burst(global.particleSystem,emitter,global.sprinkle,-3);




var isHit = HitEnemy();
if(isHit) {
  instance_destroy();
}


var inst = instance_place(x, y, obj_collidable);
if(inst != noone && inst != owner) {
  if(attackPower <= 0) {
    instance_destroy();
  } else {
    with(inst) {
      BreakBlock();
    }
  }
}

Translate();
