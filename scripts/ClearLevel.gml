ds_grid_clear(currentLevel,0);
for(var i = 0; i < ds_grid_width(currentLevel);i++) {
  for(var j = 0; j < ds_grid_height(currentLevel);j++) {
    if(levelObjects[# i,j] != noone) {
      with(levelObjects[# i,j]) {
        instance_destroy();
      }
    }
    levelObjects[# i,j] = noone;
  }
}
