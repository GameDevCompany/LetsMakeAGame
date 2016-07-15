var object = argument0;
var checkHorizontal = argument1;
var checkVertical = argument2;
var checkInside = argument3;
hit = false;

//Vertical collision
if(checkVertical) {
  if(place_meeting(x,y + verticalSpeed,object)) {
    var moveVer = 0;
    while(!place_meeting(x ,y+sign(verticalSpeed)+moveVer,object)) {
       moveVer += sign(verticalSpeed);
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
    }
    hit = true;
    horizontalSpeed = moveHor;
  }
}

//Move objects out of walls
if(checkInside) {
  if(place_meeting(x+horizontalSpeed,y+verticalSpeed,object)) {
    if(checkVertical) {
      var moveY = 1;
      while(place_meeting(x+horizontalSpeed,y+verticalSpeed-moveY,object) && moveY < 20) {
         moveY += 1;
      }
      if(moveY < maxVerticalSpeed) {
        verticalSpeed -= moveY;
      }
      
      var moveY = 1;
      while(place_meeting(x+horizontalSpeed,y+verticalSpeed+moveY,object) && moveY < 20) {
         moveY += 1;
      }
      if(moveY < maxVerticalSpeed) {
        verticalSpeed += moveY;
      }
    }
    if(checkHorizontal) {
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
  }
}
