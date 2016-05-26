verticalSpeed = 0;
horizontalSpeed = 0;
movementSpeed = 3;
jumpSpeed = 7.5;
lastGroundSpeed = 0;
state = "idle";
rotationSpeed = 0;
HP = 4;
maxHP = HP;
isCrouched = false;
doSmoke = false;
timeOfDeath = 0;
speedFactor = 1;
hit = false;
grounded = false;
dmg = 1;
winner = false;
image_speed = 0.2;

damageColor = 0;

enum characterStates {
  alive,
  dead
}

state = characterStates.alive;

index = GetPlayerIndex();
global.players[index] = id;
gamepad_index = GetGamepad();

if(gamepad_index == 1) {
  characterType = "ninja";
} else {
  characterType = "pirate";
}

originalCharacter = characterType;

attacked = false;

//Timers for various purposes
lastTouchedGround = 0;
attackTimer = 0;

