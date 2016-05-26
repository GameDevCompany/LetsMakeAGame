if(global.inGame) {
  for (var i = 1; i < array_length_1d(global.scores); i++;)
  {

    if(global.scores[i] >= 10) {
      global.inGame = false;
      
      var player = global.players[i];
      with(player) {
        winner = true;
      }
      
      room_goto( rm_result );
    }
  }
}
