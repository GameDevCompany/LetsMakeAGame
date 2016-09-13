var clicked = false;
var buttonKey = argument0;
var buttonObject = argument1;
if ((mouse_check_button_released(mb_left) && collision_point(mouse_x,mouse_y,buttonObject,true,false)) || keyboard_check_released(buttonKey)) 
{
  clicked = true;
}
return clicked;
