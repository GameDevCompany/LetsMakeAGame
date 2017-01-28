level_speed = 0 ;
level_speed_float = 0;
target_speed = 0;
internal_height = 0;
height = 0;
level = Load("Level2");
levelData = level[? "levels"];
CreateSpawn(0);
ds_list_delete(levelData, 0);
ds_list_shuffle(levelData);
currentLevel = ds_grid_create(level[? "width"],level[? "height"]);
ds_grid_read(currentLevel,levelData[| 0]);
pos = 0;
door_spawned = false;

