//Take left joystick from keyboard and apply it to horizontal speed.
horizontalSpeed = 0;
if(keyboard_check(vk_left)) {
 horizontalSpeed -= 1;
} 
if(keyboard_check(vk_right)) {
 horizontalSpeed += 1;
} 
horizontalSpeed *= movementSpeed;

//Crouching
isCrouched = keyboard_check(vk_down);

//Jump
jumpKeyPressed = keyboard_check(vk_space);

//Attacking
attackKeyPressed = keyboard_check(ord('Z'));
if(attackKeyPressed && attackTimer < global.time) {
  attacked = true;
  attackTimer = global.time + 250000;
}
