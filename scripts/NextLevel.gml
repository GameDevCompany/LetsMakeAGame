//levelData[| selectedLevel] = ds_grid_write(currentLevel);
EncodeSegment();
ClearLevel();
selectedLevel++;
selectedLevel = selectedLevel % ds_list_size(levelData);
SelectLevel(selectedLevel,selectedDepth);
