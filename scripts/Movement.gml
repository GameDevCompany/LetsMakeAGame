//Apply movement to x and y

if(grounded) {
  speedFactor = 1;
} else {
  speedFactor = 1;//0.5;
}

x += horizontalSpeed * global.timeScale * speedFactor;
y += verticalSpeed * global.timeScale * speedFactor;
