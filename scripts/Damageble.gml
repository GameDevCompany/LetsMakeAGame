//show_debug_message("frame");

var inst = instance_place(x, y, all);
if (inst != noone) {
   with(inst) {
      if(object_get_name(object_index) == "obj_ninja") {
        HP--;
      }
   }
   instance_destroy();
}
