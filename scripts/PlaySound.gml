name = argument0;
priority = argument1;
loop = argument2;
if(point_in_rectangle(x, y, view_xview[0], view_yview[0], view_xview[0]+ view_wview[0], view_yview[0]+view_hview[0])) {
  audio_play_sound(name, priority, loop);
}
