var objects;
objects[0] = col1;
objects[1] = col2;
objects[2] = col3;
objects[3] = col4;
objects[4] = col5;

if(bg.y < 0 + room_speed) {
  bg.y = view_hview[0];
  with(bg) {
    sprite_index = objects[random_range(0,array_length_1d(objects))];
  }
}

var spacing = 32;
global.lvlspd = 5+(height/500);
for(var i = 0; i < (view_wview[0]+32)/spacing; i++) {
  var xPos = (i*spacing);
  var inst = instance_create(xPos,view_hview[0]+32,obj_metalblock);
  with(inst) {
    if(place_meeting(x,y,level_collider_test)) {
      instance_destroy();
    }
    verticalSpeed = -global.lvlspd;
    test = random_range(1,20);
    if(test < 5) {
      verticalSpeed += random_range(-0.5, 0.5);
      horizontalSpeed = random_range(-0.5, 0.5);
      rotationSpeed = random_range(-1,1);
    }
  }
}
/*
var objects;
objects[0] = spr_cauldron;
objects[1] = spr_broom;
objects[2] = spr_chair;
objects[3] = spr_cat;

var d20 = random_range(1,20);

if(d20 < 5) {
  var xPos = random_range(view_xview[0],view_wview[0]);
  var inst = instance_create(xPos,view_hview[0]+32,obj_falling_object);
    

    with(inst) {
      if(place_meeting(x,y,obj_collidable)) {
        instance_destroy();
      }
      falling = true;
      grav = -0.1;
      sprite_index = objects[random_range(0,array_length_1d(objects))];
      horizontalSpeed = random_range(-1,1);
      verticalSpeed = random_range(-4,-10);
    }
}

*/
bg.y -= room_speed;
alarm[0] = room_speed/global.lvlspd;
