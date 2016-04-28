draw_set_colour(c_red);
hbar_width = 10;

width = (HP/maxHP) * hbar_width;
height = 1;
relative_position_x = -(hbar_width/2);
relative_position_y = 20;
draw_rectangle(x+relative_position_x, y+relative_position_y, x+relative_position_x+width, y+relative_position_y+height,false);
