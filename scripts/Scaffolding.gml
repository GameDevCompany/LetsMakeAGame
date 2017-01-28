
var level = ds_list_create();
var empty = ds_grid_create(grid_width,grid_height);
ds_list_add(level,ds_grid_write(empty));
var data = ds_map_create();
ds_map_add_list(data,"levels",level);
data[? "width"] = 20;
data[? "height"] = 15;
return data;
