var xpos = argument0;
var ypos = argument1;
var grid = argument2;
var neighbours;
if(xpos+1 < grid_width) {
  neighbours[0] = GetTile(xpos+1,ypos,grid);
}
if(xpos != 0) {
  neighbours[1] = GetTile(xpos-1,ypos,grid);
}
if(ypos+1 < grid_height) {
  neighbours[2] = GetTile(xpos,ypos+1,grid);
}
if(ypos != 0) {
  neighbours[3] = GetTile(xpos,ypos-1,grid);
}
return neighbours;

