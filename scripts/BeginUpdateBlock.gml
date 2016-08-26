if(falling) {
  Fall(grav);
  var inst = instance_place(x+horizontalSpeed, y+verticalSpeed, obj_character);
  if(inst != noone) {
    with(inst) {
      if(bubbled) {
        bubbled = false;
      }
    }
  }
  var inst = instance_place(x+horizontalSpeed,y+verticalSpeed,obj_collidable);
  if (inst != noone) {
      verticalSpeed *= -0.7;  
      grav *= -0.7;
      
      //PlaySound(snd_crunch, 10, false);
  }
  Collision(obj_collidable,true,true,true);
} else {

  image_angle += rotationSpeed;
}


Translate();
