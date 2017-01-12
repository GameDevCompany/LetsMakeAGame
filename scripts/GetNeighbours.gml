var xpos = argument0;
var ypos = argument1;
var grid = argument2;
var neighbours;
neighbours[0] = GetTile(xpos+1,ypos,grid);
neighbours[1] = GetTile(xpos-1,ypos,grid);
neighbours[2] = GetTile(xpos,ypos+1,grid);
neighbours[3] = GetTile(xpos,ypos-1,grid);
return neighbours;

