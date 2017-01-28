if(global.paused) exit;
level_speed_float += (target_speed - level_speed_float)*0.2;
level_speed = floor(level_speed_float);
height += level_speed;
