if(global.paused) {
  draw_set_colour(c_black);
  draw_set_alpha(0.5);
  draw_rectangle(0, 0, view_wview[global.gameview], view_hview[global.gameview], false);
  draw_set_alpha(1);
}
