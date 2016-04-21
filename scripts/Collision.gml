
var object = obj_grassblock;
//Vertical collision
if(place_meeting(x,y + verticalSpeed,obj_collidable)) {
  while(!place_meeting(x,y+sign(verticalSpeed),obj_collidable)) {
     y += sign(verticalSpeed);
  }
  if(verticalSpeed > 0) {
    grounded = true;
  }
  verticalSpeed = 0;
}

//Horizontal collision
if(place_meeting(x + horizontalSpeed,y,obj_collidable)) {
  while(!place_meeting(x+sign(horizontalSpeed),y,obj_collidable)) {
     x += sign(horizontalSpeed);
  }
  horizontalSpeed = 0;
}

if(place_meeting(x,y,obj_collidable)) {
  var moveY = 1;
  while(place_meeting(x,y-moveY,obj_collidable) && moveY < 20) {
     moveY += 1;
  }
  if(moveY < maxVerticalSpeed) {
    y -= moveY;
  }
}
