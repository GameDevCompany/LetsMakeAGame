var inst = instance_place(x + horizontalSpeed, y + verticalSpeed, obj_parachute);
if (inst != noone) {
   with(inst) {
      if(parent == noone) {
        parent = other.id;
      }
   }
}
