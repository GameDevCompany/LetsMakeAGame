var initialX = argument0;
var initialY = argument1;
var maxMovement = argument2;
var object = argument3;
var moveX = 0;
var moveY = 0;

for(var i = 0; i <= maxMovement && place_meeting(x+horizontalSpeed+moveX,y+verticalSpeed+moveY,object); i++) {
  moveX = initialX * i;
  moveY = initialY * i;
}
if(moveX < maxMovement) {
  horizontalSpeed += moveX;
}
if(moveY < maxMovement) {
verticalSpeed += moveY;
}

return moveX + moveY;
