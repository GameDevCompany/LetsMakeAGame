//Take left joystick from keyboard and apply it to horizontal speed.

//Left Stick
horizontalAxis = 0;
horizontalAxis -= keyboard_check(vk_left);
horizontalAxis += keyboard_check(vk_right);

verticalAxis = 0;
horizontalAxis -= keyboard_check(vk_up);
horizontalAxis += keyboard_check(vk_down);

//Secondary action
timebutton = keyboard_check(ord('X'));

//Jump
jumpKeyHeld = keyboard_check(vk_space);
jumpKeyPressed = keyboard_check_pressed(vk_space);

//Attacking
attackKeyPressed = keyboard_check_pressed(ord('Z'));
attackKeyHold = keyboard_check(ord('Z'));

