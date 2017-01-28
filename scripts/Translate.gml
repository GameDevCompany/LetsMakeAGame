//Apply movement to x and y
if(global.paused) {
  image_index = 0;
  exit;
}

x += round(horizontalSpeed * global.timeScale);
y += round(verticalSpeed * global.timeScale);

