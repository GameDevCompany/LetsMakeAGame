var object = argument0;
var checkHorizontal = argument1;
var checkVertical = argument2;
hit = false;

//Vertical collision
if(checkVertical) {
  if(place_meeting(x,y + verticalSpeed,object)) {
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
} 

//Horizontal collision
if(checkHorizontal) {
  if(place_meeting(x + horizontalSpeed,y + verticalSpeed,object)) {
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
}
