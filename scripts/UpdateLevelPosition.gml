var avg_position = 0;
with(obj_character) {
  avg_position += x;
}
avg_position /= instance_number(obj_character);

horizontal_position = (avg_position/view_wview[global.gameview])*10;
