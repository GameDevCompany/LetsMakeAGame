x = xprevious;
y = yprevious;
Collision(rootObject,false,true,false);
Translate();

if(falling) {
  if(y > view_hview[0] + view_yview[0] + 36) {
    instance_destroy();
  }
}




