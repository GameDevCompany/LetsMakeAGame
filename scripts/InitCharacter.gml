verticalSpeed = 0;
horizontalSpeed = 0;
movementSpeed = 5;
grav = 0.981;
jumpSpeed = 2;
state = "idle";
rotationSpeed = 0;
HP = 30;
maxHP = HP;
isCrouched = false;
dmg = 1;
image_speed = 0.2;


gamepad_index = GetGamepad();
/*if(gamepad_index == -100) {
  instance_destroy();
}*/
if(gamepad_index == 0) {
  characterType = "ninja";
} else {
  characterType = "pirate";
}

originalCharacter = characterType;

attacked = false;

//Timers for various purposes
lastTouchedGround = 0;
attackTimer = 0;

