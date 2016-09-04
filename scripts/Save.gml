var name = argument0;
var saveData = json_encode( argument1 );
var file = file_text_open_write(working_directory + "\"+name+".txt");
file_text_write_string( file, saveData );
file_text_close( file );
