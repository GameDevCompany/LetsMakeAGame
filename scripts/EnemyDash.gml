horizontalSpeed = 0;
verticalSpeed = 0;
if(timer + (1*global.milli) < global.time) {
  pos = MoveTowards(dash_angle,1); 
  enemySpeed = 18;
  horizontalSpeed = pos[0] * enemySpeed;
  verticalSpeed = pos[1] * enemySpeed;
} 
if(timer + (3*global.milli) < global.time) {
  enemySpeed *= 0.5;
  timer = global.time + random_range(5*global.milli,20*global.milli);
  dashing = false;
}
