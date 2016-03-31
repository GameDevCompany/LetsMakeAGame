//Take left joystick from gamepad and apply it to horizontal speed.
horizontalSpeed = movementSpeed * round(gamepad_axis_value(gamepad_index,gp_axislh));
jumpKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face1);
attackKeyPressed = gamepad_button_check(gamepad_index, gp_face3);

