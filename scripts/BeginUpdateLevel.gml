GenerateBackground();

if(pos < floor(height/grid_block_size)) {
  SpawnObjects();
  pos++;
}

if(pos mod (ds_grid_height(currentLevel)) == 0) {
  door_spawned = false;
  var matches = 0;
  var checkLevel = ds_grid_create(ds_grid_width(currentLevel),ds_grid_height(currentLevel));
  while(matches <= 3) {
    matches = 0;
    ds_list_shuffle(levelData);
    ds_grid_read(checkLevel,levelData[| 0]);
    for(var i = 0; i < ds_grid_width(currentLevel); i++) {
      if(currentLevel[# i,14] == 0 && checkLevel[# i,0] == 0) {
        matches++;
      }
    }
  }
  currentLevel = checkLevel;
}

