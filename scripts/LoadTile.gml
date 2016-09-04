var data;
file = file_text_open_read(working_directory + "\Level.txt");
for (i = 0; i < 15; i++)
   {
   data[i] = file_text_read_string(file);
   file_text_readln(file);
   }
file_text_close(file);
return data;
