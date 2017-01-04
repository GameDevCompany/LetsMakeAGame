var internal_height = floor(height/10);
//Gradient
background_vspeed[0] = -level_speed * 0.05;
background_xscale[0] = view_wview[global.gameview] / background_width[0];
show_debug_message(internal_height);
//Stars
background_vspeed[1] = 0;//-level_speed * 0.05;
var star_alpha = clamp(1-(internal_height/1000),0,1);
background_alpha[1] = star_alpha;

//clouds
if(star_alpha == 0) {
  var rate = 7;
  if(height > 20000 && internal_height < 3000) {
    rate = 28;
  } else if(internal_height > 1000 && internal_height < 2000) {
    rate = 57;
  } else if(internal_height < 1000) {
    rate = 1000;
  }
  show_debug_message(rate);
  if(height mod rate == 0) {
    with(instance_create(random_range(0,view_wview[global.gameview]),view_hview[global.gameview],obj_cloud)) {
      var test;
      test[0] = 0;
      test[1] = 1;
      test[2] = 1;
      test[3] = 2;
      test[4] = 2;
      test[5] = 2;
      test[6] = 3;
      test[7] = 3;
      test[8] = 3;
      test[9] = 3;
      test[10] = 4;
      test[11] = 4;
      test[12] = 4;
      test[13] = 4;
      test[14] = 4;
      var rand = test[irandom_range(0,array_length_1d(test)-1)];
      if(rand == 0) {
        image_alpha = 1;
        depth = 1000;
        speed_multiplier = 0.5;
        image_xscale = 1.2;
        image_yscale = 1.2;
      } else if(rand == 1) {
        image_alpha = 0.8;
        depth = 1001;
        speed_multiplier = 0.4;
        image_xscale = 1;
        image_yscale = 1;
      } else if(rand == 2) {
        image_alpha = 0.6;
        depth = 1002;
        speed_multiplier = 0.3;
        image_xscale = 0.8;
        image_yscale = 0.8;
      } else if(rand == 3) {
        image_alpha = 0.4;
        depth = 1003;
        speed_multiplier = 0.2;
        image_xscale = 0.6;
        image_yscale = 0.6;
      } else if(rand == 4) {
        image_alpha = 0.2;
        depth = 1004;
        speed_multiplier = 0.1;
        image_xscale = 0.4;
        image_yscale = 0.4;
      }
      sprite_index = GetRandomCloud();
    } 
  }
}

