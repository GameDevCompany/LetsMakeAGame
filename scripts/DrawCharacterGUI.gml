if(y < view_yview[global.gameview]) {
  draw_set_font(uiFont);
  draw_set_color(c_white);
  draw_text_transformed((x-6)*global.toGuiX,(view_yview[global.gameview]+15)*global.toGuiY,string(round(timeOutside)),0.5,0.5,0);
}
