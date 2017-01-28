
for(var i = 1; i < array_length_1d(global.players); i++) {
  playerId = global.players[i];
  global.scores[i] = 0;
  with(playerId) {
    ResetCharacter();
  }
}
global.inGame = true;
ResetLevel();
room_goto(rm_play_area);
