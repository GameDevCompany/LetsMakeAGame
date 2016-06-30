var inst = instance_place(x + horizontalSpeed, y + verticalSpeed, obj_parachute);
if (inst != noone) {
   with(inst) {
      parent = other.id;
   }
}
