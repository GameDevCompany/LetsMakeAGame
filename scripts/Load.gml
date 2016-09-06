var name = argument0;
if(file_exists(working_directory + "\"+name+".txt")) {
  var file = file_text_open_read(working_directory + "\"+name+".txt");
  var loadData = file_text_read_string( file );
  file_text_close( file );
  var map_data = json_decode( loadData );
  return map_data;
} else {
  var map_data = ds_map_create();
  ds_map_add_list(map_data, "exp", 1);
  return map_data;
}
