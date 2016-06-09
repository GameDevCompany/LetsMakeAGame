var object = argument0;
var checkHorizontal = argument1;
var checkVertical = argument2;

hit = false;

//Vertical collision
if(checkVertical) {
  if(place_meeting(x,y + verticalSpeed,object)) {
    while(!place_meeting(x,y+sign(verticalSpeed),object)) {
       y += sign(verticalSpeed);
    }
    hit = true;
    verticalSpeed = 0;
  }
}
//Horizontal collision
if(checkHorizontal) {
  if(place_meeting(x + horizontalSpeed,y,object)) {
    while(!place_meeting(x+sign(horizontalSpeed),y,object)) {
       x += sign(horizontalSpeed);
    }
    hit = true;
    horizontalSpeed = 0;
  }
}

if(place_meeting(x,y,object)) {
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
if(place_meeting(x,y + 1,object)) {
  grounded = true;
  var inst = instance_place(x, y+1, object);
  if (inst != noone) {
    groundObject = inst;
 }
}

