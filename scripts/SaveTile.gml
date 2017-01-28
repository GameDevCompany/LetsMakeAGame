var lvlData = argument1;
var name = argument0;
var data = ds_map_create();
ds_map_add_list(data,"levels",lvlData);

data[? "width"] = 20;
data[? "height"] = 15;
Save(name,data);
