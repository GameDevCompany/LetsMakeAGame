global.inGame = true;
for(var i = 1; i < array_length_1d(global.players); i++) {
  playerId = global.players[i];
  global.scores[i] = 0;
  with(playerId) {
    winner = false;
    ResetCharacter();
  }
}
room_goto( rm_testarea );
