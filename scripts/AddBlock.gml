x_mouse = argument0;
y_mouse = argument1;

var mx = floor(x_mouse / grid_block_size);
var my = floor(y_mouse / grid_block_size);
if(currentLevel[# mx,my] != currentBlock) {
  if(levelObjects[# mx,my] != noone) {
    with(levelObjects[# mx,my]) {
      instance_destroy();
    }
  }
  currentLevel[# mx,my] = currentBlock;
  if(object_exists(blocks[currentBlock])) {
    var inst = instance_create((mx*grid_block_size)+(grid_block_size/2),(my*grid_block_size)+(grid_block_size/2),blocks[currentBlock]);
    levelObjects[# mx,my] = inst;
    ds_list_add(allObjects,inst);
    with(inst) {
      x_index = mx;
      y_index = my;
      falling = false;
      neighbours = GetNeighbours(x_index,y_index,other.currentLevel);
      verticalSpeed = 0;
      rotationSpeed = 0;
    }
  }
} 
