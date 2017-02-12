if(text != "") {
  draw_set_font(uiFont);
  draw_set_color(textColor);

  var posX = x*global.toGuiX;
  var posY = y*global.toGuiY;

   
  draw_text_transformed(posX,posY,text,0.2*global.toGuiX,0.2*global.toGuiY,0);
}
