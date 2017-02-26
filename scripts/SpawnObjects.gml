objects = AvailableBlocks();
var tempList = ds_list_create();
tempList = levelData[| 0];
var currentLevel = ds_grid_create(grid_width,grid_height);
for(var d = 0; d < 3; d++) {
  if(is_string(tempList[| d])) {
    ds_grid_read(currentLevel,tempList[| d]);
    var lvlpos = pos % ds_grid_height(currentLevel);
    for(var i = 0; i < ds_grid_width(currentLevel); i++) {
      var xPos = global.gamePortX+(i*grid_block_size);
      var objIndex = currentLevel[# i,lvlpos];
      if( objIndex == 9) {
        if(floor(pos/ds_grid_height(currentLevel)) % 10 == 0 && !door_spawned) {
          door_spawned = true;
        } else {
          objIndex = 0;
        }
      }
      if(objIndex != 0) {
        var inst = instance_create(xPos+(grid_block_size/2),view_hview[global.gameview]+grid_block_size-(height%grid_block_size),objects[objIndex]);
        with(inst) {
          x_index = i;
          layer = 300 - (d * 100);
          depth = layer;
          y_index = lvlpos;
          neighbours = GetNeighbours(i,lvlpos,currentLevel);
          selectedIndex = AutoTile(i,lvlpos,currentLevel);
          rotationSpeed = 0;
        }
      }
    }
  }
}
