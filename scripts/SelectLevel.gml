index = argument0;
ds_grid_read(currentLevel,levelData[| index]);
ds_grid_clear(levelObjects,noone);

for(var i = 0; i < ds_grid_width(currentLevel);i++) {
  for(var j = 0; j < ds_grid_height(currentLevel);j++) {
      if(currentLevel[# i,j] != 0) {
        var inst = instance_create((i*32)+16,(j*32)+16,blocks[currentLevel[# i,j]]);
        levelObjects[# i,j] = inst;
        with(inst) {
          falling = false;
          verticalSpeed = 0;
          rotationSpeed = 0;
        }
      }
  } 
} 
