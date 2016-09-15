var object = argument0;
hit = false;
var objectCollided = noone;
//Vertical collision
objectCollided = instance_place(x,y + verticalSpeed,object);
if(objectCollided != noone) {
  var moveVer = 0;
  while(!place_meeting(x ,y+sign(verticalSpeed)+moveVer,object)) {
     moveVer += sign(verticalSpeed);
     if(abs(moveVer) > 36) {
        break;
     }
  }
  hit = true;
  verticalSpeed = moveVer;
}
 
objectCollided = instance_place(x + horizontalSpeed,y + verticalSpeed,object);
if(objectCollided != noone) {
  var moveHor = 0; 
  while(!place_meeting(x+sign(horizontalSpeed)+moveHor,y + verticalSpeed,object)) {
     moveHor += sign(horizontalSpeed);
     if(abs(moveHor) > 36) {
        break;
     }
  }
  hit = true;
  horizontalSpeed = moveHor;
}

return objectCollided;
