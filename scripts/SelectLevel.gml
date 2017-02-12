var index = argument0;
var dIndex = argument1;
var tempList = ds_list_create();

tempList = levelData[| index];
ds_grid_clear(levelObjects,noone);
ds_grid_clear(currentLevel,0);
var loadLevel = ds_grid_create(grid_width,grid_height);
for(var d = 0; d < 3; d++) {
  if(is_string(tempList[| d])) {

    ds_grid_read(loadLevel,tempList[| d]);
    for(var i = 0; i < ds_grid_width(loadLevel);i++) {
      for(var j = 0; j < ds_grid_height(loadLevel);j++) {
        if(loadLevel[# i,j] != 0) {
          var inst = instance_create((i*grid_block_size)+(grid_block_size/2),(j*grid_block_size)+(grid_block_size/2),blocks[loadLevel[# i,j]]);
          if(d == dIndex) {
            levelObjects[# i,j] = inst;
          }
          ds_list_add(allObjects,inst);
          with(inst) {
            x_index = i;
            y_index = j;
            falling = false;
            if(d != dIndex) {
              image_alpha = 0.5;
            }
            depth = d;
            neighbours = GetNeighbours(x_index,y_index,loadLevel);
            verticalSpeed = 0;
            rotationSpeed = 0;
          }
        }
      }
    }
  } else {
    var empty = ds_grid_create(grid_width,grid_height);
    tempList[| d] = ds_grid_write(empty);
  }
}
ds_grid_read(currentLevel,tempList[| dIndex]);
