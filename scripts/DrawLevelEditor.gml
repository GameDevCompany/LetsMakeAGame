var x_mouse = clamp(mouse_x,0,level_width);
var y_mouse = clamp(mouse_y,0,level_height);
if(object_exists(blocks[currentBlock]) && mouse_x < level_width) {
  draw_sprite(blocks[currentBlock].sprite_index,0,floor(x_mouse/grid_block_size)*grid_block_size+(grid_block_size/2),floor(y_mouse/grid_block_size)*grid_block_size+(grid_block_size/2));
}
