idleSprite = asset_get_index("spr_" + characterType + "_idle"); 
runningSprite = asset_get_index("spr_" + characterType + "_running"); 
rollSprite = asset_get_index("spr_" + characterType + "_roll"); 
punchSprite = asset_get_index("spr_" + characterType + "_punch"); 
crouchSprite = asset_get_index("spr_" + characterType + "_crouch"); 
crouchWalkSprite = asset_get_index("spr_" + characterType + "_crouch_walk"); 

if(attackHeld > 500000 && attackHeld < 2000000) {
  shake_camera(2);
} else if (attackHeld > 2000000) {
  if(characterType == "elemental") {
    characterType = originalCharacter;
    dmg = 1;
  } else {
    characterType = "elemental";
    dmg = 10;
  }
  attackHeld = 0;
}

if(characterType == "elemental") {
  HP -= delta_time/1500000;
}
