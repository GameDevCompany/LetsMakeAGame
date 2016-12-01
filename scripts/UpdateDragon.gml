var flip = 1;
if(attackPattern == "fot") {
  sprite = spr_dragon_foot;
  sprite_index = spr_dragon_foot;
  opacity = 1;
  image_xscale = 2;
  image_yscale = 2;
  depth = -10;
  if(state == "init") {
    x = random_range(0,room_width);
    y = 0;
    state = "down"; 
  } else if(state == "down") {
    if(y < 200) {
      y += 10;
    }  else {
      state = "up";
    }
  } else {
    if(y > -100) {
      y -= 7;
    } else {
      state = "init";
      pat++;
    }
  }
  
    
} else if(attackPattern == "flyattack") {
  prevDepth = depth;
  sprite_index = sprite;
  depth = Oscillator(0.001,100);
  if(depth > prevDepth) {
    if(sprite != spr_dragonback) {
      pat++;
    }
    sprite = spr_dragonback;

  } else {
    sprite = spr_dragon;
  }
  
  x = (room_width/2) + Oscillator(0.0001,room_width/2) + Oscillator(0.001,50);
  y = (room_height/2) + Oscillator(0.0002,room_height/2) + Oscillator(0.002,50);

  if(x - xprevious > 0) {
    flip = -1;
  } else {
    flip = 1;
  }
  
  var d = depth;
  d = (100-(d + 100))+100;
  image_xscale = clamp(d/100,0.25,10)*flip*4;
  image_yscale = clamp(d/100,0.25,10)*4;
  
  
  
  opacity = clamp(1-(depth/100),0.5,1)
} else {

}

if(depth > -20 && depth < 20) {
  var list = collision_multiple(x,y,rootBlock);
  for (var i = 0; i < ds_list_size(list); i++)
  {
    var obj = list[|i];
    with (obj) {
      with(SurfaceManager){
        time = room_speed * 0.3;
      }
      BreakBlock();
      
    }
  }
  var list = collision_multiple(x,y,obj_character);
  for (var i = 0; i < ds_list_size(list); i++)
  {
    var obj = list[|i];
    with (obj) {
       KillCharacter(); 
    }
  }
}
if(pat > 3) {
  if(attackPattern == "fot") {
    attackPattern = "flyattack"
  } else {
    attackPattern = "fot"
  }
  pat = 0;
}
