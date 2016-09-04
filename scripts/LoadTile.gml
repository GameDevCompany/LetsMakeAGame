file = file_text_open_read(working_directory + "\Level.txt");
var num = 0; while (!file_text_eoln(file))
   {
   level[num] = file_text_read_string(file);
   num++;
   }
file_text_close(file);
return level;
