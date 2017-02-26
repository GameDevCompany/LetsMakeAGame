draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction+90, image_blend, 1);
draw_sprite_ext(sprite_index, image_index+2, x, y, image_xscale*-1, image_yscale, direction+90, image_blend, 0.2);
if(hasLight) {
  draw_set_blend_mode( bm_add );
  draw_sprite_ext(light, image_index+2, x, y, image_xscale, image_yscale, direction, image_blend, 0.1);
  draw_set_blend_mode( bm_normal );
}
