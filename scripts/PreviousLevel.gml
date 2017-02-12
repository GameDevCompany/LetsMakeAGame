//levelData[| selectedLevel] = ds_grid_write(currentLevel);
EncodeSegment();

ClearLevel();
selectedLevel--;
if(selectedLevel < 0) {
  selectedLevel = ds_list_size(levelData)-1;
}
SelectLevel(selectedLevel,selectedDepth);
