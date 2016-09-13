levelData[| selectedLevel] = ds_grid_write(currentLevel);
ClearLevel();
selectedLevel++;
selectedLevel = selectedLevel % ds_list_size(levelData);
SelectLevel(selectedLevel);
