height += global.lvlspd;
background_vspeed[7] = -global.lvlspd * 1.25;
background_hspeed[7] = 0.3;
if(pos < floor(height/32)) {
  SpawnObjects();
  pos++;
}

if(pos mod (ds_grid_height(currentLevel)) == 0) {
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

