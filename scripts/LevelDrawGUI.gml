
with(obj_character) {
  for(var i = 0; i < lifeCount; i++) {
    draw_sprite_ext(spr_witch_purple_idle,1,80+(i*30)*global.toGuiX,(view_hview[global.gameview] - 40)*global.toGuiY,0.5,0.5,0,c_white,1);
  }
  draw_sprite(spr_crystal,1,30*global.toGuiX,(view_hview[global.gameview] - 40)*global.toGuiY);
  draw_set_color(c_yellow);
  draw_text_transformed(50*global.toGuiX,(view_hview[global.gameview] - 75)*global.toGuiY,string(currency),0.3*global.toGuiX,0.3*global.toGuiY,0);
}
