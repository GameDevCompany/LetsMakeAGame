//Take left joystick from gamepad and apply it to horizontal speed.
horizontalSpeed = 0;

if(keyboard_check(vk_left)) {
 horizontalSpeed -= 1;
} 
if(keyboard_check(vk_right)) {
 horizontalSpeed += 1;
} 
horizontalSpeed *= movementSpeed;

jumpKeyPressed = keyboard_check(vk_space);
attackKeyPressed = keyboard_check(ord('Z'));
