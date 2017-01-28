if(!ready) {
  var chars = GetAvailableCharacters();
  if(round(gamepad_axis_value(gamepad_index,gp_axislh)) != lastAxis) {
    lastAxis = round(gamepad_axis_value(gamepad_index,gp_axislh));
    characterTypeIndex += lastAxis;
    if(characterTypeIndex >= array_length_1d(chars)) {
      characterTypeIndex = 0;
    }
    if(characterTypeIndex < 0) {
      characterTypeIndex = array_length_1d(chars)-1;
    }
  }
  characterType = chars[characterTypeIndex];
  SetSprites();
  sprite_index = idleSprite;
}

if(gamepad_button_check_pressed(gamepad_index, gp_face1)) {
  ready = !ready;
}

  
