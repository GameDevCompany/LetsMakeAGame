var i, file;

var test;
test[0] = "11111100000000111111";
test[1] = "11111100000000111111";
test[2] = "11111100000000111111";
test[3] = "11111100000000111111";
test[4] = "11111100000000111111";
test[5] = "11111100000000111111";
test[6] = "11111100000000111111";
test[7] = "11111100000000111111";
test[8] = "11111100000000111111";
test[9] = "11111100000000111111";
test[10] = "11111100000000111111";
test[11] = "11111100000000111111";
test[12] = "11111100000000111111";
test[13] = "11111100000000111111";
test[14] = "11111100000000111111";



file = file_text_open_write(working_directory + "\Level.txt");
for (i = 0; i < array_length_1d(test); i += 1)
{
  file_text_write_string(file, test[i]);
  file_text_writeln(file);
}
file_text_close(file);
