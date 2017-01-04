if (mouse_check_button(mb_left) && mouse_x < 1440) {
  AddBlock(clamp(mouse_x,0,1440), clamp(mouse_y,0,1080));
}
if mouse_check_button(mb_right) 
{
  RemoveBlock(clamp(mouse_x,0,1440), clamp(mouse_y,0,1080));
}
if (mouse_wheel_up()) {
  NextBlock(); 
}
if (mouse_wheel_down()) {
  PreviousBlock();
}


