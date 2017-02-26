//draw_set_font(uiFont);
//DrawTextOutlined(10,10,string(round(height))+"m",c_white,c_black);

with(obj_character) {
  for(var i = 0; i < lifeCount; i++) {
    draw_sprite_ext(spr_witch_purple_idle,1,80+(i*30)*global.toGuiX,(view_hview[global.gameview] - 40)*global.toGuiY,0.5,0.5,0,c_white,1);
  }
  draw_sprite(spr_crystal,1,30*global.toGuiX,(view_hview[global.gameview] - 40)*global.toGuiY);
  draw_set_color(c_yellow);
  draw_text_transformed(50*global.toGuiX,(view_hview[global.gameview] - 75)*global.toGuiY,string(currency),0.3*global.toGuiX,0.3*global.toGuiY,0);
}
//draw_text(0,0,string(instance_count));
//draw_text(0,0,string(section));
