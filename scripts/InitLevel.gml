background_vspeed[0] = -0.6;
background_vspeed[1] = -0.8;
level_speed = 16;
level_speed_float = 16;
target_speed = 16;
height = 0;
level = Load("Level2");
levelData = level[? "levels"];
ds_list_shuffle(levelData);
currentLevel = ds_grid_create(level[? "width"],level[? "height"]);
ds_grid_read(currentLevel,levelData[| 0]);
pos = 0;
door_spawned = false;
//SHADER STUFF
uheight = shader_get_uniform(SkyGradient,"height");
shader_sample = shader_get_sampler_index(SkyGradient, "gm_BaseTexture");
texture_set_repeat_ext(shader_sample, true);
