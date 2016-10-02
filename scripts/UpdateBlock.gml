x = xprevious;
y = yprevious;

if(falling) {
    var thing = Collision(obj_collidable);
    var thing2 = CollisionExtract(obj_collidable);
  if(y > view_hview[global.gameview] + view_yview[global.gameview] + 300) {
   instance_destroy();
  }
} else {
  SelectAutoTile();
}
Translate();


if(y < view_yview[global.gameview]-300) {
  instance_destroy();
}
