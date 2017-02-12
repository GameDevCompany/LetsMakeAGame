//Make sure current level is updated
//levelData[| selectedLevel] = ds_grid_write(currentLevel);
EncodeSegment();
//Save level.
SaveAll("Level_v3",levelData);
