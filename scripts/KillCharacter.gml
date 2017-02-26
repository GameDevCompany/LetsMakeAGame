timeOfDeath = get_timer();
alive = false;
visible = false;
temp_mask = mask_index;
mask_index = nocollision;
horizontalSpeed = 0;
lifeCount--;
verticalSpeed = 0;
part_particles_create(global.particleSystem, x, y, global.cloudParticles, 12);
