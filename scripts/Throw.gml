if(throwKeyPressed) {
  var flipX = 180 * ((image_xscale*0.5)-0.5);
  
  var throw = MoveTowards(image_angle + flipX, 20);
  var throwX = throw[0];
  var throwY = throw[1];
  var inst = instance_create(x + throwX, y + throwY, obj_shuriken);
  with (inst)
  {
    horizontalSpeed = throwX * 1;
    verticalSpeed = throwY * 1;
    playerIndex = other.index;
  }
}
