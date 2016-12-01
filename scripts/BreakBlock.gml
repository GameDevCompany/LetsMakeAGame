for(var i = 0;i < array_length_1d(global.masks);i++) {
  masked_sprite[i] = sprite_duplicate(sprite_index);
  sprite_set_alpha_from_sprite(masked_sprite[i],global.masks[i]);
  part_type_sprite(global.particles[i], masked_sprite[i],0,0,0);
  part_particles_create(global.particleSystem, x, y, global.particles[i],1);
}

instance_deactivate_object(id);
instance_destroy();
