spd = 20;//random_range(20,30);

horizontalSpeed = random_range(-1,1)*spd;
verticalSpeed = random_range(-1,1)*spd;
rotationSpeed = horizontalSpeed;
maxVerticalSpeed = 20;
hit = false;
sprite_angle = 0;
characterType = "ninja";
part = "head";
sprite = asset_get_index("spr_" + characterType + "_"+part);

created_on = 0;
particleDelay = irandom_range(3000000,5000000);
falling = false;
