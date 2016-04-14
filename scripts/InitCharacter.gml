verticalSpeed = 0;
horizontalSpeed = 0;
movementSpeed = 5;
grav = 0.981;
jumpSpeed = 2;
state = "idle";
rotationSpeed = 0;
HP = 3;
maxHP = HP;
isCrouched = false;





gamepad_index = GetGamepad();
/*if(gamepad_index == -100) {
  instance_destroy();
}*/
if(gamepad_index == 0) {
  characterType = "pirate";
} else {
  characterType = "ninja";
}

idleSprite = asset_get_index("spr_" + characterType + "_idle"); 
runningSprite = asset_get_index("spr_" + characterType + "_running"); 
rollSprite = asset_get_index("spr_" + characterType + "_roll"); 
punchSprite = asset_get_index("spr_" + characterType + "_punch"); 
crouchSprite = asset_get_index("spr_" + characterType + "_crouch"); 
crouchWalkSprite = asset_get_index("spr_" + characterType + "_crouch_walk"); 


attacked = false;

//Timers for various purposes
lastTouchedGround = 0;
attackTimer = 0;

