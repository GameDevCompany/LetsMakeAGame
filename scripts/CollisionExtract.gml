var object = argument0;
var objectCollided = noone;

//Move objects out of walls
objectCollided = instance_place(x+horizontalSpeed,y+verticalSpeed,object);
if(objectCollided != noone) {

  var moveY1 = 1;
  while(place_meeting(x+horizontalSpeed,y+verticalSpeed-moveY1,object) && moveY1 < 20) {
     moveY1 += 1;
  }
  if(moveY1 < maxVerticalSpeed) {
    verticalSpeed -= moveY1;
  }
  
  /*var moveY2 = 1;
  while(place_meeting(x+horizontalSpeed,y+verticalSpeed+moveY2,object) && moveY2 < 20) {
     moveY2 += 1;
  }
  if(moveY2 < maxVerticalSpeed) {
    verticalSpeed += moveY2;
  }*/
  

  var moveX = 1;
  while(place_meeting(x+horizontalSpeed-moveX,y+verticalSpeed,object) && moveX < 10) {
     moveX += 1;
  }
  if(moveX < 10) {
    horizontalSpeed -= moveX;
  }
  
  var moveX = 1;
  while(place_meeting(x+horizontalSpeed+moveX,y+verticalSpeed,object) && moveX < 10) {
     moveX += 1;
  }
  if(moveX < 10) {
    horizontalSpeed += moveX;
  }
  
}
return objectCollided;
