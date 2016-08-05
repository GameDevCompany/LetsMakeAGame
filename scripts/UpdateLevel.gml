height -= (global.timeScale * delta_time)/100000;
if(height <= 0) {
    global.inGame = false;
    room_goto( rm_result );
}
