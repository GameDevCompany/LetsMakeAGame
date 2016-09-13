var x_mouse = clamp(mouse_x,0,608);
var y_mouse = clamp(mouse_y,0,480);
if(object_exists(blocks[currentBlock]) && mouse_x < 640) {
  draw_sprite(blocks[currentBlock].sprite_index,0,floor(x_mouse/32)*32+16,floor(y_mouse/32)*32+16);
}
