if(global.paused) exit;

//Take left joystick from gamepad and apply it to horizontal speed.

//Left Stick
horizontalAxis = gamepad_axis_value(gamepad_index,gp_axislh);
verticalAxis = gamepad_axis_value(gamepad_index,gp_axislv);

//Right Stick
rightHorizontalAxis = gamepad_axis_value(gamepad_index,gp_axisrh);
rightVerticalAxis = gamepad_axis_value(gamepad_index,gp_axisrv);


//Secondary action
timebutton = clamp(1-gamepad_button_value(gamepad_index,gp_shoulderrb),0.2,1);

//Jumping keys
jumpKeyHeld = gamepad_button_check(gamepad_index, gp_face1);
jumpKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face1);

//Attacking
attackKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face3);
if(!attackKeyPressed) {
  attackKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_shoulderrb);
}

attackKeyHold = gamepad_button_check(gamepad_index, gp_face3);
if(!attackKeyHold) {
  attackKeyHold = gamepad_button_check(gamepad_index, gp_shoulderrb);
}

attackKeyReleased = gamepad_button_check_released(gamepad_index, gp_face3);
if(!attackKeyReleased) {
  attackKeyReleased = gamepad_button_check_released(gamepad_index, gp_shoulderrb);
}



