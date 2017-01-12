if (mouse_check_button(mb_left) && mouse_x < level_width) {
  AddBlock(clamp(mouse_x,0,level_width), clamp(mouse_y,0,level_height));
}
if mouse_check_button(mb_right) 
{
  RemoveBlock(clamp(mouse_x,0,level_width), clamp(mouse_y,0,level_height));
}
if(mouse_wheel_up()) {
  NextBlock(); 
}
if(mouse_wheel_down()) {
  PreviousBlock();
}


