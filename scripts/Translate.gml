//Apply movement to x and y
move_wrap(global.hwrap, global.vwrap, 0);
x += horizontalSpeed * global.timeScale;
y += verticalSpeed * global.timeScale;


if(!global.hwrap) {
  if(x < view_xview[0]) {
    x = view_xview[0];
  }
  if(x > view_xview[0]+view_wview[0]) {
    x = view_xview[0]+view_wview[0];
  }
}
if(!global.vwrap) {
  
  /*if(y < view_yview[0]) {
   y = view_yview[0];
  }
  if(y > view_yview[0]+view_hview[0]) {
    y = view_yview[0]+view_hview[0]
  }*/
}
