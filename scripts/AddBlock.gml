x_mouse = argument0;
y_mouse = argument1;

var mx = floor(x_mouse / 32);
var my = floor(y_mouse / 32);
if(currentLevel[# mx,my] != currentBlock) {
  if(levelObjects[# mx,my] != noone) {
    with(levelObjects[# mx,my]) {
      instance_destroy();
    }
  }
  currentLevel[# mx,my] = currentBlock;
  if(object_exists(blocks[currentBlock])) {
    var inst = instance_create((mx*32)+16,(my*32)+16,blocks[currentBlock]);
    levelObjects[# mx,my] = inst;
    with(inst) {
      falling = false;
      verticalSpeed = 0;
      rotationSpeed = 0;
    }
  }
} 
