var object = argument0;
hit = false;
var objectCollided = noone;
//Vertical collision

objectCollided = instance_place(x + horizontalSpeed,y+verticalSpeed,object);
if(objectCollided != noone) {
  var moveVer = 0;
  for(var i = 0; i < verticalSpeed && !place_meeting(x ,y+sign(verticalSpeed)+moveVer,object); i++) {
     moveVer += sign(verticalSpeed);
  }
  hit = true;
  verticalSpeed = moveVer;
}

objectCollided = instance_place(x + horizontalSpeed,y+verticalSpeed,object);
if(objectCollided != noone) {
  var moveHor = 0; 
  for(var i = 0; i < horizontalSpeed && !place_meeting(x+sign(horizontalSpeed)+moveHor,y + verticalSpeed,object); i++) {
     moveHor += sign(horizontalSpeed);
  }
  hit = true;
  horizontalSpeed = moveHor;
}


return objectCollided;
