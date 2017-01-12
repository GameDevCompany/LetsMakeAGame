var inst = instance_place(x,y,obj_character); 
if(inst != noone) {
  with(inst) {
    currency += other.value;
  }
  PlaySoundEffect(snd_currency_pickup,10,false);
  instance_destroy();
}
