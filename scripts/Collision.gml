
var object = obj_grassblock;
//Vertical collision
if(place_meeting(x,y + verticalSpeed,all)) {
  while(!place_meeting(x,y+sign(verticalSpeed),all)) {
     y += sign(verticalSpeed);
  }
  if(verticalSpeed > 0) {
    grounded = true;
  }
  verticalSpeed = 0;
}

//Horizontal collision
if(place_meeting(x + horizontalSpeed,y,all)) {
  while(!place_meeting(x+sign(horizontalSpeed),y,all)) {
     x += sign(horizontalSpeed);
  }
  horizontalSpeed = 0;
}

if(place_meeting(x,y,all)) {
  var moveY = 1;
  while(place_meeting(x,y-moveY,all) && moveY < 20) {
     moveY += 1;
  }
  if(moveY < maxVerticalSpeed) {
    y -= moveY;
  }
}
