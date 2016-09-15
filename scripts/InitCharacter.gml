///Initiate character variables

alive = true; 
winner = false;
initX = x;
initY = y;
powerUpTime = 0;
powerUpCoolDown = 0;
powerUpName = '';
scale = 1;

InitSelectCharacter();
InitControls();
InitAnimation();
InitMove();
InitCollision();
InitCastSpell();
InitTimeout();
InitBubbled();
InitHealth();

movementSpeedVer = 4;
movementSpeedHor = 5;
