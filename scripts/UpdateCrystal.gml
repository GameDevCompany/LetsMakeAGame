CleanObjects();
UpdateCurrency();

if(grav) {
  StaticGravity();
  Collision(root_block);
  horizontalSpeed *= 0.99;
  if(IsGrounded(root_block)) {
      horizontalSpeed *= 0.8;
  }
}
Translate();
