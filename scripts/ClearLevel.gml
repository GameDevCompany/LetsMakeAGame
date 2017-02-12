ds_grid_clear(currentLevel,0);
ds_grid_clear(levelObjects,noone);
for(var i = 0; i < ds_list_size(allObjects); i++) {
  with(allObjects[| i]) {
    instance_destroy();
  }
}
ds_list_clear(allObjects);
/*
for(var i = 0; i < ds_grid_width(currentLevel);i++) {
  for(var j = 0; j < ds_grid_height(currentLevel);j++) {
    if(levelObjects[# i,j] != noone) {
      with(levelObjects[# i,j]) {
            instance_destroy();
      }
    }
    levelObjects[# i,j] = noone;
  }
}*/
