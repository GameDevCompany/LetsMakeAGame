


width = argument0;
height = argument1;
prevWidth = width;
prevHeight = height;  

//Calculate background region width 
backgroundViewWidth = width/(height/targetHeight);

//Calculate game region width and x position
gamePortWidth = targetWidth*(height/targetHeight);

gamePortX = (backgroundViewWidth-targetWidth)/2;


prevPortX = global.gamePortX;
global.gamePortX = gamePortX;

with(all) {
  if(room_get_name(room) == "rm_play_area") { 
    x +=  global.gamePortX-other.prevPortX;
  }
}


//Make it so you can't resize the window smaller than the 4:3 aspect ratio
window_set_min_width((height/3)*4);

//Background region
//Set "View in room"
view_wview[background] = backgroundViewWidth;
view_hview[background] = targetHeight;

//Set "Port on screen"
view_wport[background] = width;
view_hport[background] = height;

//Game region
//Set "View in room"
view_wview[game] = backgroundViewWidth;
view_hview[game] = targetHeight;
//Set "Port on screen"
view_wport[game] = width;
view_hport[game] = height;
//Center game region in the game window
//view_xport[game] = gamePortX;

display_set_gui_size(width,height);
display_set_gui_maximise(1, 1, 0, 0);
global.toGuiX = gamePortWidth/targetWidth;
global.toGuiY = height/targetHeight;
global.toRoomX = targetWidth/gamePortWidth;
global.toRoomY = targetHeight/height;


