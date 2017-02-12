///Raycast(startX, startY, endX, endY, target)

//Establish argument variables
var startX = argument0;
var startY = argument1;
var endX = argument2;
var endY = argument3;
var target = argument4;

if(collision_line(startX,startY,endX,endY,target,false,false)) {
//Establish direction and max distance to raycast
  var len = 0;
  var dir = point_direction(startX, startY, endX, endY);
  var maxs = point_distance(startX, startY, endX, endY);
  
  //Begin raycast loop
  while(len < maxs) {
      var castX = startX + lengthdir_x(len,dir);
      var castY = startY + lengthdir_y(len,dir);
      if(collision_point(castX, castY, target, false, false)) {
          hitpoint[0]= castX;
          hitpoint[1] = castY;
          return hitpoint;
      }
  
      len++;
  }
}

//If the raycast hit nothing, return false
return false;
