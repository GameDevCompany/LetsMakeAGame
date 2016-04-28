if(attacked) {
    var mask = mask_index;
    mask_index = asset_get_index("spr_" + characterType + "_punch_mask"); 
    var inst = instance_place(x, y, all);
    if (inst != noone) {
       with(inst) {
          if(object_get_name(object_index) == "obj_character") {
            HP -= other.dmg;
            if(HP <= 0) {
              global.scores[other.index] += 1;
            }
          }
       }
    }
    mask_index = mask; 
    
    attacked = false;
}
