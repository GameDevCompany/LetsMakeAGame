
var object = obj_grassblock;
//Vertical collision
if(place_meeting(x,y + verticalSpeed,object)) {
  while(!place_meeting(x,y+sign(verticalSpeed),object)) {
     y += sign(verticalSpeed);
  }
  if(verticalSpeed > 0) {
    grounded = true;
  }
  verticalSpeed = 0;
}

//Horizontal collision
if(place_meeting(x + horizontalSpeed,y,object)) {
  while(!place_meeting(x+sign(horizontalSpeed),y,object)) {
     x += sign(horizontalSpeed);
  }
  horizontalSpeed = 0;
}

if(place_meeting(x,y,object)) {
  while(place_meeting(x,y-1,object)) {
     y -= 1;
  }
  y -= 1;
}
