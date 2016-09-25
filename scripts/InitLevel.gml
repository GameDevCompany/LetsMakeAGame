alarm[0] = room_speed;
background_vspeed[0] = -0.6;
background_vspeed[1] = -0.8;
background_vspeed[7] = -6;
height = 0;

level = Load("Level2");
levelData = level[? "levels"];
ds_list_shuffle(levelData);
currentLevel = ds_grid_create(level[? "width"],level[? "height"]);
ds_grid_read(currentLevel,levelData[| 0]);
pos = 0;


//SHADER STUFF
uheight = shader_get_uniform(SkyGradient,"height");
utex = shader_get_uniform(SkyGradient,"tex");

