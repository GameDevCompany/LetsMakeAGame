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
  var thing = Collision(obj_collidable);
  var thing2 = CollisionExtract(obj_collidable);
} else {
  image_angle += rotationSpeed;
}


Translate();
