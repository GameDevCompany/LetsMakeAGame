var map_data = ds_map_create();
with(obj_settings) {
  map_data = settings;
}
ApplySettings(map_data);
Save("Settings",map_data);
LoadRoom(rm_mainmenu);
