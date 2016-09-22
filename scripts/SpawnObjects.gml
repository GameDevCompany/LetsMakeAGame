objects = AvailableBlocks();
var spacing = 32;
global.lvlspd = 5+(height/500);

for(var i = 0; i < ds_grid_width(currentLevel); i++) {
  var xPos = (i*spacing);
  var objIndex = currentLevel[# i,pos];
  if(objIndex != 0) {
    var inst = instance_create(xPos+16,view_hview[0]+32,objects[objIndex]);
    with(inst) {
      verticalSpeed = -global.lvlspd;
      x_index = i;
      y_index = other.pos;
      brokeFree = random_range(1,20);

      selectedIndex = AutoTile(i,other.pos,other.currentLevel);

      if(brokeFree < 5) {
        verticalSpeed += random_range(-0.5, 0.5);
        horizontalSpeed = random_range(-0.5, 0.5);
        rotationSpeed = random_range(-1,1);
      } else {
        rotationSpeed = 0;
      }
    }
  }       
}  
pos++;  
if(pos >= ds_grid_height(currentLevel)) {
    pos = 0;
    

    var checkLevel = ds_grid_create(ds_grid_width(currentLevel),ds_grid_height(currentLevel));
    var matches = 0;
    while(matches <= 3) {
      matches = 0;
      ds_list_shuffle(levelData);
      ds_grid_read(checkLevel,levelData[| 0]);
      for(var i = 0; i < ds_grid_width(currentLevel); i++) {
        if(currentLevel[# i,14] == 0) {
          if(currentLevel[# i,14] == checkLevel[# i,0]) {
            matches++;
          }
        }
      }
    }
    currentLevel = checkLevel;
}

alarm[0] = room_speed/global.lvlspd;
