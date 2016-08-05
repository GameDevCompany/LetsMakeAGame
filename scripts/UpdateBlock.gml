x = xprevious;
y = yprevious;





if(falling) {
  Collision(rootObject,false,true,false);
  if(y > view_hview[0] + view_yview[0] + 300) {
   instance_destroy();
  }
}
Translate();




if(y < view_yview[0]-300) {
  instance_destroy();
}


