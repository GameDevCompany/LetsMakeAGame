if(text != "") {
  draw_set_font(uiFont);
  draw_set_color(textColor);
  var ww = (string_width(text)*(0.2*global.toGuiY))*global.toRoomX;
  var hh = (string_height(text)*(0.2*global.toGuiY))*global.toRoomY;
  var bh = bbox_bottom - bbox_top;
  var bw = bbox_right - bbox_left;
  
  var posX = (x+(bw-ww)/2)*global.toGuiX;
  var posY = (y-3+(bh-hh)/2)*global.toGuiY;
  if(pressed) {
    posY = (y+(bh-hh)/2)*global.toGuiY;
  }
   
  draw_text_transformed(posX,posY,text,0.2*global.toGuiX,0.2*global.toGuiY,0);
}
