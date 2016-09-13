if(ds_list_size(levelData) > 1) {
  ds_list_delete(levelData, selectedLevel);
  if(selectedLevel >= ds_list_size(levelData)) {
    selectedLevel = ds_list_size(levelData)-1;
    SelectLevel(selectedLevel);
  }
}
