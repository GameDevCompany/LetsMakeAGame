if(global.paused) exit;

//Take left joystick from gamepad and apply it to horizontal speed.

//Left Stick
horizontalAxis = gamepad_axis_value(gamepad_index,gp_axislh);
verticalAxis = gamepad_axis_value(gamepad_index,gp_axislv);

//Secondary action
timebutton = clamp(1-gamepad_button_value(gamepad_index,gp_shoulderrb),0.2,1);

//Jumping keys
jumpKeyHeld = gamepad_button_check(gamepad_index, gp_face1);
jumpKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face1);

//Attacking
attackKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face3);
attackKeyHold = gamepad_button_check(gamepad_index, gp_face3);
attackKeyReleased = gamepad_button_check_released(gamepad_index, gp_face3);
