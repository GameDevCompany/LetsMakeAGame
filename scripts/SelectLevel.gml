index = argument0;
ds_grid_read(currentLevel,levelData[| index]);
ds_grid_clear(levelObjects,noone);

for(var i = 0; i < ds_grid_width(currentLevel);i++) {
  for(var j = 0; j < ds_grid_height(currentLevel);j++) {
    if(currentLevel[# i,j] != 0) {
      var inst = instance_create((i*grid_block_size)+(grid_block_size/2),(j*grid_block_size)+(grid_block_size/2),blocks[currentLevel[# i,j]]);
      levelObjects[# i,j] = inst;
      with(inst) {
        x_index = i;
        y_index = j;
        falling = false;
        neighbours = GetNeighbours(x_index,y_index,other.currentLevel);
        verticalSpeed = 0;
        rotationSpeed = 0;
      }
    }
  } 
} 
