var tempList = ds_list_create();
tempList[| selectedDepth] = ds_grid_write(currentLevel);
levelData[| selectedLevel] = tempList;
ds_list_mark_as_list(levelData, selectedLevel);

