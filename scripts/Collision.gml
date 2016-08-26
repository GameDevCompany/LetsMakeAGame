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

//Move objects out of walls
if(checkInside) {
  if(place_meeting(x+horizontalSpeed,y+verticalSpeed,object)) {
    if(checkVertical) {
      var moveY1 = 1;
      while(place_meeting(x+horizontalSpeed,y+verticalSpeed-moveY1,object) && moveY1 < 20) {
         moveY1 += 1;
      }
      if(moveY1 < maxVerticalSpeed) {
        verticalSpeed -= moveY1;
      }
      
      var moveY2 = 1;
      while(place_meeting(x+horizontalSpeed,y+verticalSpeed+moveY2,object) && moveY2 < 20) {
         moveY2 += 1;
      }
      if(moveY2 < maxVerticalSpeed) {
        verticalSpeed += moveY2;
      }
      
      if(moveY2 == 20 && moveY1 == 20) {
        verticalSpeed -= global.lvlspd;
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
