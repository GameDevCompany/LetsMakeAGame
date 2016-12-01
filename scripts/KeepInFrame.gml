var henable = argument0;
var venable = argument1;

var horizontalPadding = sprite_width/2;

if(!global.hwrap && henable) {
  x = clamp(x,  view_xview[global.gameview]+horizontalPadding, view_xview[global.gameview]+view_wview[global.gameview]-horizontalPadding);
}
if(!global.vwrap && venable) {
  /*if(y < view_yview[global.gameview]) {
    y = view_yview[global.gameview];
  }*/
  if(y > view_yview[global.gameview]+view_hview[global.gameview]) {
    y = view_yview[global.gameview]+view_hview[global.gameview]
  }
}
