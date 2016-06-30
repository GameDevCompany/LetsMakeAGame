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

if(place_meeting(x+horizontalSpeed,y+verticalSpeed,object)) {
  if(checkVertical) {
    var moveY = 1;
    while(place_meeting(x,y-moveY,object) && moveY < 20) {
       moveY += 1;
    }
    if(moveY < maxVerticalSpeed) {
      y -= moveY;
    }
    
    var moveY = 1;
    while(place_meeting(x,y+moveY,object) && moveY < 20) {
       moveY += 1;
    }
    if(moveY < maxVerticalSpeed) {
      y += moveY;
    }
  }
  if(checkHorizontal) {
    var moveX = 1;
    while(place_meeting(x-moveX,y,object) && moveX < 10) {
       moveX += 1;
    }
    if(moveX < 10) {
      x -= moveX;
    }
    
    var moveX = 1;
    while(place_meeting(x+moveX,y,object) && moveX < 10) {
       moveX += 1;
    }
    if(moveX < 10) {
      x += moveX;
    }
  }
}

//Check grounded
var inst = collision_rectangle( bbox_left+horizontalSpeed, bbox_bottom+verticalSpeed, bbox_right+horizontalSpeed, bbox_bottom+verticalSpeed+1, object, true, true );
if (inst != noone) {
  grounded = true;
  groundObject = inst;
} else {
   grounded = false;
}



