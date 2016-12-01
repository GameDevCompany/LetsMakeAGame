if (mouse_check_button(mb_left) && mouse_x < 640) {
  AddBlock(clamp(mouse_x,0,608), clamp(mouse_y,0,480));
}
if mouse_check_button(mb_right) 
{
  RemoveBlock(clamp(mouse_x,0,608), clamp(mouse_y,0,480));
}
if (mouse_wheel_up()) {
  NextBlock(); 
}
if (mouse_wheel_down()) {
  PreviousBlock();
}


