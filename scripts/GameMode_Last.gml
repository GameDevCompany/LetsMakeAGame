if(global.inGame) {
  var gameOver = false;
  var numAlive = array_length_1d(global.players)-1;
  for (var i = 1; i < array_length_1d(global.players); i++;)
  {
    var player = global.players[i];
    with(player) {
      winner = false;
      if(!alive) {
        numAlive--;
      } else {
        winner = true;
      }
    }
  }
  if(numAlive <= 1) {
    global.inGame = false;
    room_goto( rm_result );
  }
  global.takeDamage = false;
}
