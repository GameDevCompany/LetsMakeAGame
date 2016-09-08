if mouse_check_button(mb_left)
{
  var mx = floor(mouse_x / 32);
  var my = floor(mouse_y / 32);
  
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
}

if (mouse_wheel_up()) {
  currentBlock++;
  currentBlock = currentBlock % array_length_1d(blocks); 
}
if (mouse_wheel_down()) {
  currentBlock--;
  if(currentBlock < 0) {
    currentBlock = array_length_1d(blocks)-1;
  }
}
 
 
if mouse_check_button(mb_right) 
{
  var mx = floor(mouse_x / 32);
  var my = floor(mouse_y / 32);
  if(currentLevel[# mx,my] != 0) {
    var inst = levelObjects[# mx,my];
    with(inst) {
      instance_destroy();
    }
    levelObjects[# mx,my] = noone;
    currentLevel[# mx,my] = 0;
  }
}
if(keyboard_check_released(ord('S'))) {
  levelData[| selectedLevel] = ds_grid_write(currentLevel);
  SaveTile("Level2",levelData);
}
if(keyboard_check_released(ord('C'))) {
  ClearLevel();
}

if(keyboard_check_released(ord('N'))) {
  CreateLevel();
}
if(keyboard_check_released(vk_left)) {
  levelData[| selectedLevel] = ds_grid_write(currentLevel);
  ClearLevel();
  selectedLevel--;
  if(selectedLevel < 0) {
    selectedLevel = ds_list_size(levelData)-1;
  }

  SelectLevel(selectedLevel);
}
if(keyboard_check_released(vk_right)) {
  levelData[| selectedLevel] = ds_grid_write(currentLevel);
  ClearLevel();
  selectedLevel++;
  selectedLevel = selectedLevel % ds_list_size(levelData);
  SelectLevel(selectedLevel);
}
