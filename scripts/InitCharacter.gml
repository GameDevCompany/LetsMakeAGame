verticalSpeed = 0;
horizontalSpeed = 0;
movementSpeed = 3;
jumpSpeed = 10;
lastGroundSpeed = 0;
animationComplete = true;
rotationSpeed = 0;

HP = 4;
maxHP = HP;
i = 0;
isCrouched = false;

timeOfDeath = 0;
speedFactor = 1;
hit = false;
grounded = false;

dmg = 1;
winner = false;
image_speed = 0.2;
maxVerticalSpeed = 20;

damageColor = 0;
color = c_maroon;

sprite_angle = 0;
initX = x;
initY = y;

ready = false;

characterTypeIndex = 0;
lastAxis = 0;
characterType = "robot";


alive = true; 
state = "";




index = GetPlayerIndex();
gamepad_index = GetGamepad();
//if(gamepad_index != -100) {
  global.players[index] = id;
//} else {
  //instance_destroy();
//}

attacked = false;

//Timers for various purposes
lastTouchedGround = 0;
attackTimer = 0;

