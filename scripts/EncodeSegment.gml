var currentList = levelData[| selectedLevel];
currentList[| selectedDepth] = ds_grid_write(currentLevel);
levelData[| selectedLevel] = currentList;
ds_list_mark_as_list(levelData, selectedLevel);

