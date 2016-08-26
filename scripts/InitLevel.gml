alarm[0] = room_speed;
background_vspeed[0] = -0.6;
background_vspeed[1] = -0.8;
background_vspeed[7] = -6;
height = 0;
var objects;
objects[0] = col1;
objects[1] = col2;
objects[2] = col3;
objects[3] = col4;

bg = instance_create(0,view_hview[0],level_collider_test);
with(bg) {
   sprite_index = objects[random_range(0,array_length_1d(objects))];
}
