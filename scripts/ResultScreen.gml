var numPanels = array_length_1d(global.scores) - 1;
var panelWidth = 120+20;
var center = room_width/2;
var startPosition = center - ((numPanels*panelWidth)/2);
for (var i = 0; i < numPanels; i++;)
{
   var inst = instance_create(startPosition+(i*panelWidth),64,obj_ui_panel);
   with(inst) {
      playerIndex = i+1;
      if(global.players[playerIndex].winner) {
        instance_create(x,y,obj_ui_winner);
      }
   }

   var player = global.players[i+1];
   player.x = startPosition+(i*panelWidth) + ((panelWidth-20) / 2);
   player.y = 64+45;
}
