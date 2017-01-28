
var index = argument0;
renderLevel = ds_grid_create(grid_width,grid_height);
ds_grid_read(renderLevel,levelData[| index]);

var objects = AvailableBlocks();
for(var i = 0; i < ds_grid_width(renderLevel);i++) {
  for(var j = 0; j < ds_grid_height(renderLevel);j++) {
    var objIndex = renderLevel[# i,j];
    if(objIndex != 0) {
      var inst = instance_create(global.gamePortX+(i*grid_block_size)+(grid_block_size/2),(grid_block_size*1.5)+(j*grid_block_size)+(grid_block_size/2),objects[objIndex]);
      with(inst) {
        x_index = i;
        y_index = j;
        falling = false;
        neighbours = GetNeighbours(x_index,y_index,other.renderLevel);
        verticalSpeed = 0;
        rotationSpeed = 0;
      }
    }
  }
}
