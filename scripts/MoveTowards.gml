var dir = argument0;
var dist = argument1;
var vector;
vector[0] = dist * cos(degtorad(-dir));
vector[1] = dist * sin(degtorad(-dir));
return vector; 
