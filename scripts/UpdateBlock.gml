x = xprevious;
y = yprevious;

if(falling) {
    var thing = Collision(obj_collidable);
    var thing2 = CollisionExtract(obj_collidable);
  if(y > view_hview[0] + view_yview[0] + 300) {
   instance_destroy();
  }
}
Translate();


if(y < view_yview[0]-300) {
  instance_destroy();
}


