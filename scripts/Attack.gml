if(attacked) {
    var inst = collision_rectangle(x, y+5, x+(8*image_xscale), y+9, obj_ninja, false, true);
    if (inst != noone) {
       with (inst) {
         inst.HP--;
       }
    }
    attacked = false;
}
