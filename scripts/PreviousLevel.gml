levelData[| selectedLevel] = ds_grid_write(currentLevel);
ClearLevel();
selectedLevel--;
if(selectedLevel < 0) {
  selectedLevel = ds_list_size(levelData)-1;
}
SelectLevel(selectedLevel);
