name = argument0;
priority = argument1;
loop = argument2;
if(point_in_rectangle(x, y, view_xview[global.gameview], view_yview[global.gameview], view_xview[global.gameview]+ view_wview[global.gameview], view_yview[global.gameview]+view_hview[global.gameview])) {
  audio_play_sound(name, priority, loop);
}
