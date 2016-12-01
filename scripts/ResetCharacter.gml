x = initX;
y = initY;
if(!alive) {
  mask_index = temp_mask;
}
alive = true;
visible = true;

ApplyPowerUp(false);
InitMove();
InitBubbled();
InitBounce();
bubbled = false;


