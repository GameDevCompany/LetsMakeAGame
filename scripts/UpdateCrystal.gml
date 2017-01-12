UpdateCurrency();

if(grav) {
  StaticGravity();
  Collision(root_block);
  horizontalSpeed *= 0.99;
}
Translate();
