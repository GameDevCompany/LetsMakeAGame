x = initX;
y = initY;
if(!alive) {
  mask_index = temp_mask;
}
alive = true;
visible = true;
isFalling = true;
grounded = false;
ApplyPowerUp(false);
InitMove();
InitBubbled();
InitBounce();
InitJump();
bubbled = false;


