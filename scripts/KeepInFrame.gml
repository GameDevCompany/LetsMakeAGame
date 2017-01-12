var henable = argument0;
var venable = argument1;

var horizontalPadding = sprite_width/2;

if(henable) {
  x = clamp(x,  view_xview[global.gameview]+horizontalPadding, view_xview[global.gameview]+view_wview[global.gameview]-horizontalPadding);
}
if(venable) {
  if(y < view_yview[global.gameview]) {
    y = view_yview[global.gameview];
  }

}
  if(bbox_bottom > view_yview[global.gameview]+view_hview[global.gameview]) {
    y = view_yview[global.gameview]+view_hview[global.gameview] - (bbox_bottom-y)
  }
