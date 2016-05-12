if(attacked) {
    var mask = mask_index;
    mask_index = asset_get_index("spr_" + characterType + "_punch_mask"); 
    var inst = instance_place(x, y, all);
    show_debug_message(index);
    doDamage(inst,dmg,index,x,y);
    mask_index = mask; 
    attacked = false;
}
