if(object_exists(blocks[currentBlock])) {
  draw_sprite(blocks[currentBlock].sprite_index,0,floor(mouse_x/32)*32+16,floor(mouse_y/32)*32+16);
}
