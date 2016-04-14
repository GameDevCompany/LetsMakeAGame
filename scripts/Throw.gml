if(throwKeyPressed) {
  
  var flipX = 180 * ((image_xscale*0.5)-0.5);
  
  var throwX = 20 * cos(degtorad(-image_angle + flipX));
  var throwY = 20 * sin(degtorad(-image_angle + flipX));
                        
    
   var inst = instance_create(x + throwX, y + throwY, obj_shuriken);
  with (inst)
  {
    horizontalSpeed = throwX * 0.5;
    verticalSpeed = throwY * 0.5;
  }
}
