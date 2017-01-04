var x_mouse = clamp(mouse_x,0,1440);
var y_mouse = clamp(mouse_y,0,1080);
if(object_exists(blocks[currentBlock]) && mouse_x < 1440) {
  draw_sprite(blocks[currentBlock].sprite_index,0,floor(x_mouse/72)*72+36,floor(y_mouse/72)*72+36);
}
