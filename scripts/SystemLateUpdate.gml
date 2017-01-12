global.time += global.timeScale * delta_time;
//global.timeScale = 1;

if(keyboard_check_released(ord('R'))) {
  StartMatch();
}

scriptToCall = asset_get_index("GameMode_"+string(global.gameMode));
script_execute(scriptToCall);


if(global.selectCharacters) {
  var numReady = array_length_1d(global.players)-1;
  for (var i = 1; i < array_length_1d(global.players); i++;) {
    if(global.players[i].ready) {
      numReady--;
    }
  }
  if(numReady == 1) {
    global.selectCharacters = false;
    global.inGame = true;
    room_goto(rm_play_area);
  }
}
