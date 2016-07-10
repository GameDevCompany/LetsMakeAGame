//Apply movement to x and y
/*if(grounded && horizontalSpeed != 0) {
  var flipX = 180 * ((image_xscale*0.5)-0.5);
  part_type_colour1(global.dirtParticles, groundObject.color);
  part_type_direction(global.dirtParticles, image_angle + flipX + (60*image_xscale), image_angle + flipX + (60*image_xscale), 0, 0);
  part_particles_create(global.particleSystem, x, bbox_bottom, global.dirtParticles, random_range(1,3));
}*/
move_wrap(global.hwrap, global.vwrap, 0);
x += horizontalSpeed * global.timeScale;
y += verticalSpeed * global.timeScale;


