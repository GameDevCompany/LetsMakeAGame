num = 1;
level_speed = 0 ;
level_speed_float = 0;
target_speed = 0;
internal_height = 0;
height = 0;
section = 1;
level = Load("Level_v3");
levelData = level[? "levels"];
CreateSpawn(0);
ds_list_delete(levelData, 0);
ds_list_shuffle(levelData);
currentLevel = ds_grid_create(level[? "width"],level[? "height"]);

pos = 0;
door_spawned = false;

