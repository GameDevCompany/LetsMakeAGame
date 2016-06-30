//Take left joystick from gamepad and apply it to horizontal speed.
horizontalSpeed *= 0.5;
horizontalSpeed += movementSpeed * gamepad_axis_value(gamepad_index,gp_axislh);
upndown =  gamepad_axis_value(gamepad_index,gp_axislv);
if(horizontalSpeed < 1 && horizontalSpeed > -1) {
  horizontalSpeed = 0;
}

if(keyboard_check(vk_right)) {
  damageColor = 100;
}

// slowmotion
var timebutton = clamp(1-gamepad_button_value(gamepad_index,gp_shoulderrb),0.2,1);
if(global.timeScale > timebutton) {
  global.timeScale = timebutton;
}

//Crouching
var crouching = round(gamepad_axis_value(gamepad_index,gp_axislv));
if(crouching == 1)  {
  isCrouched = true; 
} else {
  isCrouched = false;
}

//Jumping
jumpKeyHeld = gamepad_button_check(gamepad_index, gp_face1);
jumpKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face1);

//Attacking
attackKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face3);
attackKeyHold = gamepad_button_check(gamepad_index, gp_face3);
if(attackKeyHold) {
  attackHeld += global.timeScale * delta_time;
} else {
  attackHeld = 0;
}

