var x_index = argument0;
var y_index = argument1;
var grid = argument2;

var adj_x;
var adj_y;
adj_x[1]= 0;
adj_y[1]= -1;

adj_x[2]= -1;
adj_y[2]= 0;

adj_x[4]= 1;
adj_y[4]= 0;

adj_x[8]= 0;
adj_y[8]= 1;

var sum = 0;
for(var i = 1; i <= 8; i+=i) {
  var selected_x = clamp(x_index + adj_x[i],0,19);
  var selected_y = clamp(y_index + adj_y[i],0,14);
  var value = 0;
  if(grid[# selected_x,selected_y] == grid[# x_index,y_index]) {
    value = 1;
  }//IsSolid(grid[# selected_x,selected_y]);
  sum += i*value;
}

return sum;
