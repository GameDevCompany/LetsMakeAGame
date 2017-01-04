if(y < view_yview[global.gameview]-view_hview[global.gameview]) {
  instance_destroy();
}
if(y > view_yview[global.gameview]+(view_hview[global.gameview]*2)) {
  instance_destroy();
}

if(x < view_xview[global.gameview]-view_wview[global.gameview]) {
  instance_destroy();
}
if(x > view_xview[global.gameview]+(view_wview[global.gameview]*2)) {
  instance_destroy();
}
