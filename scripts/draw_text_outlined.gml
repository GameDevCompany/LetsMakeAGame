//do this so we can reset the color later
var c;
c = draw_get_color();
//draw the outline
draw_set_color(argument4);
draw_text(argument0-1,argument1-1,argument2);
draw_text(argument0+1,argument1-1,argument2);
draw_text(argument0+1,argument1+1,argument2);
draw_text(argument0-1,argument1+1,argument2);
//draw the inside
draw_set_color(argument3);
draw_text(argument0,argument1,argument2);
//reset the drawing color (so there are no side-effects)
draw_set_color(c);
