objects = AvailableBlocks();
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
      y_index = lvlpos;
      neighbours = GetNeighbours(i,lvlpos,other.currentLevel);
      selectedIndex = AutoTile(i,lvlpos,other.currentLevel);
      rotationSpeed = 0;
    }
  }
}
