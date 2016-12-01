objects = AvailableBlocks();
var spacing = 32;
background_vspeed[2] = 0;

var lvlpos = pos % ds_grid_height(currentLevel);
for(var i = 0; i < ds_grid_width(currentLevel); i++) {
  var xPos = global.gamePortX+(i*spacing);
  var objIndex = currentLevel[# i,lvlpos];
  if(objIndex != 0) {
    var inst = instance_create(xPos+16,view_hview[global.gameview]+32-(height%32),objects[objIndex]);
    with(inst) {
      x_index = i;
      y_index = lvlpos;
      selectedIndex = AutoTile(i,lvlpos,other.currentLevel);
      rotationSpeed = 0;
    }
  }
}


