///Initiate character variables
prevHorizontalSpeed = 0;
prevVerticalSpeed = 0;
alive = true; 
winner = false;
initX = x;
initY = y;
powerUpTime = 0;
powerUpCoolDown = 0;
isFalling = true;
powerUpName = '';
scale = 1;
index = GetPlayerIndex();
InitSelectCharacter();
InitControls();
InitAnimation();
InitMove();
InitCollision();
InitCastSpell();
InitGravity();
InitTimeout();
InitBubbled();
InitJump();
InitGrounded();
InitBounce();
bubbled = false;
movementSpeedVer = 4*2.25;
movementSpeedHor = 5*2.25;
