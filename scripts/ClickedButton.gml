var clicked = false;
var buttonObject = argument0;
if ((mouse_check_button(mb_left) && collision_point(mouse_x,mouse_y,buttonObject,true,false))) 
{
  clicked = true;
}
return clicked;
