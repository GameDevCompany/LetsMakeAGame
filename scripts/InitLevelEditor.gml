currentBlock = 1;
blocks = AvailableBlocks();
for(var i = 1; i < array_length_1d(blocks);i++) {
  var inst = instance_create(-100,0,blocks[i]);
  with(inst) {
    falling = false;
    verticalSpeed = 0;
    rotationSpeed = 0;
    neighbours[0] = 0;
    neighbours[1] = 0;
    neighbours[2] = 0;
    neighbours[3] = 0;
  }
}

background_xscale[0] = view_wview[0] / background_width[0];
level = Load("Level_v3");
levelData = level[? "levels"];
currentLevel = ds_grid_create(level[? "width"],level[? "height"]);
levelObjects = ds_grid_create(level[? "width"],level[? "height"]);
selectedLevel = 0;
selectedDepth = 0;
allObjects = ds_list_create();
SelectLevel(selectedLevel,selectedDepth);
