//Take left joystick from gamepad and apply it to horizontal speed.
horizontalSpeed *= 0.4;
horizontalSpeed += movementSpeed * round(gamepad_axis_value(gamepad_index,gp_axislh));
var tempSpeed = floor(abs(horizontalSpeed));
horizontalSpeed = sign(horizontalSpeed)*tempSpeed;

// slowmotion
//if(index == 1) {
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
jumpKeyPressed = gamepad_button_check(gamepad_index, gp_face1);

//Throw
throwKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face4);

//Attacking
var attackKeyPressed = gamepad_button_check_pressed(gamepad_index, gp_face3);
if(attackKeyPressed && attackTimer < global.time) {
  attacked = true;
  attackTimer = global.time + 250000;
}
var attackKeyHold = gamepad_button_check(gamepad_index, gp_face3);
if(attackKeyHold) {
  attackHeld += global.timeScale * delta_time;
} else {
  attackHeld = 0;
}


