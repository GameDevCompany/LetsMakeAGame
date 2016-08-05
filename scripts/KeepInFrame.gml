var henable = argument0;
var venable = argument1;

if(!global.hwrap && henable) {
  x = clamp(x,  view_xview[0], view_xview[0]+view_wview[0]);
}
if(!global.vwrap && venable) {
  /*if(y < view_yview[0]) {
   y = view_yview[0];
  }*/
  if(y > view_yview[0]+view_hview[0]) {
    y = view_yview[0]+view_hview[0]
  }
}
