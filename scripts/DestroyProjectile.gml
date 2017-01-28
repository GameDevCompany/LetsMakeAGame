var inst = instance_create(x,y,tempObject);
with(inst) {
  sprite_index = spr_spell_explosion;
  image_angle = other.direction + 90;
  image_speed = 0.5;
}
instance_create(x,y,screen_shake);
