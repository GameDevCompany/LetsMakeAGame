if(global.paused) exit;
GenerateBackground();


if(pos < floor(height/grid_block_size)) {
  SpawnObjects();
  pos++;
  
  
  if((section % 20 == 0) && (pos mod (ds_grid_height(currentLevel)) == 0)) {
    var inst = instance_create(-108,view_hview[global.gameview],obj_cloud_transition);
    with(inst) {
      depth = 1000;
    }
    var inst = instance_create(-108,view_hview[global.gameview],obj_cloud_transition);
    with(inst) {
      image_alpha = 0.5;
      depth = -1000;
    }
  }

  if(pos mod grid_height == 0) {
    door_spawned = false;
    section++;
    var matches = 0;
    var checkLevel = ds_grid_create(ds_grid_width(currentLevel),ds_grid_height(currentLevel));
    while(matches <= 3) {
      matches = 0;
      ds_list_shuffle(levelData);
      //ds_grid_read(checkLevel,levelData[| 0]);
      for(var i = 0; i < ds_grid_width(currentLevel); i++) {
        if(currentLevel[# i,14] == 0 && checkLevel[# i,0] == 0) {
          matches++;
        }
      }
    }
    currentLevel = checkLevel;
  }
}


