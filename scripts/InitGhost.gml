InitEnemy();
dir = random_range(0,359);
enemySpeed *= 0.5;
image_speed = 0.25;
image_alpha = 0.8;
dashing = false;
timer = global.time + random_range(5*global.milli,20*global.milli);

