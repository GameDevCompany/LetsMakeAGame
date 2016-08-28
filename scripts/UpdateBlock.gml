x = xprevious;
y = yprevious;

if(falling) {
    Collision(obj_collidable,true,true);
    CollisionExtract(obj_collidable,true,true);
  if(y > view_hview[0] + view_yview[0] + 300) {
   instance_destroy();
  }
}
Translate();


if(y < view_yview[0]-300) {
  instance_destroy();
}


