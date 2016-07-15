if(attackKeyHold) {
  attackHeld += global.timeScale * delta_time;
} else {
  attackHeld = 0;
}


if(attackKeyPressed && attackTimer < global.time) {
  attacked = true;
  attackTimer = global.time + 250000;

  SetState("attacking",true);

  var flipX = 180 * ((image_xscale*0.5)-0.5);
  var dash = MoveTowards(sprite_angle + flipX, 1);

  horizontalSpeed += dash[0];
  verticalSpeed += dash[1];
  lastGroundSpeed += dash[0];
  var inst = instance_create(x,y,obj_slash);
  with(inst) {
    depth = other.depth - 1;
    image_xscale = other.image_xscale;
    image_angle = other.sprite_angle;
    parent = other.id;
  }
}

if(attacked) {
    var mask = mask_index;
    mask_index = asset_get_index("spr_" + characterType + "_punch_mask"); 
    var inst = instance_place(x, y, obj_character);
    DealDamage(inst,dmg,index,x,y);
    mask_index = mask; 
}

