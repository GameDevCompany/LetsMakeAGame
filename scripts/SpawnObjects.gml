var objects;
objects[0] = spr_book;
objects[1] = spr_cauldron;
objects[2] = spr_pillar;
objects[3] = spr_dog;
objects[4] = spr_chair;
objects[5] = spr_chair_alt;
objects[6] = spr_table;
objects[7] = spr_cat;
//objects[8] = spr_fireball;

var xPos = random_range(view_xview[0],view_wview[0]);
var inst = instance_create(xPos,view_hview[0]+32,obj_falling_object);
with(inst) {
  if(place_meeting(x,y,all)) {
    instance_destroy();
  }

  falling = true;
  grav= -0.1;
  sprite_index = objects[random_range(0,array_length_1d(objects))];
  horizontalSpeed = random_range(-1,1);
  verticalSpeed = random_range(-4,-10);
}
alarm[0] = room_speed * random_range(1.5,2.5);
