var object = obj_grassblock;
hit = false;




//Vertical collision
if(place_meeting(x,y + verticalSpeed,obj_collidable)) {
  while(!place_meeting(x,y+sign(verticalSpeed),obj_collidable)) {
     y += sign(verticalSpeed);
  }

  hit = true;
  verticalSpeed = 0;
}

//Horizontal collision
if(place_meeting(x + horizontalSpeed,y,obj_collidable)) {
  while(!place_meeting(x+sign(horizontalSpeed),y,obj_collidable)) {
     x += sign(horizontalSpeed);
  }
  hit = true;
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
  
  var moveY = 1;
  while(place_meeting(x,y+moveY,obj_collidable) && moveY < 20) {
     moveY += 1;
  }
  if(moveY < maxVerticalSpeed) {
    y += moveY;
  }
  
  var moveX = 1;
  while(place_meeting(x-moveX,y,obj_collidable) && moveX < 10) {
     moveX += 1;
  }
  if(moveX < 10) {
    x -= moveX;
  }
  
  var moveX = 1;
  while(place_meeting(x+moveX,y,obj_collidable) && moveX < 10) {
     moveX += 1;
  }
  if(moveX < 10) {
    x += moveX;
  }
}

//Check grounded
if(place_meeting(x,y + 1,obj_collidable)) {
  grounded = true;
}

