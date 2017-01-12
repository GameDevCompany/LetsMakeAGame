if(internal_height != floor(height/10)) {
  internal_height = floor(height/10);
  
  //Background gradient scrolling up, adjust for falling speed
  background_vspeed[0] = -level_speed * 0.05;
  background_xscale[0] = view_wview[global.gameview] / background_width[0];
  
  //Fade out stars
  background_vspeed[1] = 0;
  var star_alpha = clamp(1-(internal_height/1000),0,1);
  background_alpha[1] = star_alpha;
  
  //Spawn clouds and streaks
  if(star_alpha == 0) {
    var rate = 32;
    if(height > 2000 && internal_height < 3000) {
      rate = 64;
    } else if(internal_height > 800 && internal_height < 2000) {
      rate = 128;
    } else if(internal_height < 800) {
      rate = 1000;
    }
    if(internal_height mod rate == 0) {
      with(instance_create(random_range(-300,view_wview[global.gameview]),view_hview[global.gameview]+300,obj_cloud)) {
        var stack;
        //test[0] = 0;
        stack[1] = 1;
        stack[2] = 1;
        stack[3] = 2;
        stack[4] = 2;
        stack[5] = 2;
        stack[6] = 3;
        stack[7] = 3;
        stack[8] = 3;
        stack[9] = 3;
        /*stack[10] = 4;
        stack[11] = 4;
        stack[12] = 4;
        stack[13] = 4;
        stack[14] = 4;*/
        var c = stack[irandom_range(1,array_length_1d(stack)-1)];
        if(c == 0) {
          image_alpha = 1;
          depth = 1000;
          speed_multiplier = 0.5;
          image_xscale = 1.2;
          image_yscale = 1.2;
        } else if(c == 1) {
          image_alpha = 0.8;
          depth = 1001;
          speed_multiplier = 0.4;
          image_xscale = 1;
          image_yscale = 1;
        } else if(c == 2) {
          image_alpha = 0.6;
          depth = 1002;
          speed_multiplier = 0.3;
          image_xscale = 0.8;
          image_yscale = 0.8;
        } else if(c == 3) {
          image_alpha = 0.7;
          depth = 1003;
          speed_multiplier = 0.2;
          image_xscale = 0.6;
          image_yscale = 0.6;
        } else if(c == 4) {
          image_alpha = 0.4;
          depth = 1004;
          speed_multiplier = 0.1;
          image_xscale = 0.4;
          image_yscale = 0.4;
        }
        sprite_index = GetRandomObject(GetClouds());
      } 
    }
    
    if(internal_height mod (rate*2) == 0) {
      with(instance_create(random_range(-300,view_wview[global.gameview]),view_hview[global.gameview]+300,obj_cloud)) {
        depth = 1010;
        speed_multiplier = 0.05;
        sprite_index = GetRandomObject(GetStreaks());
      } 
    }
  }
}
