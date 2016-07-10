var numPanels = array_length_1d(global.players) - 1;
var panelWidth = 120+20;
var center = room_width/2;
var startPosition = center - ((numPanels*panelWidth)/2);
for (var i = 0; i < numPanels; i++;)
{
    //Placing character
    var player = global.players[i+1];
    with(player) {
      ResetCharacter();
      x = startPosition+(i*panelWidth) + ((panelWidth-20) / 2);
      y = 64+45;
    }

    var inst = instance_create(startPosition+(i*panelWidth),64,obj_ui_panel);
    with(inst) {
       playerIndex = i+1;
       if(global.players[playerIndex].winner) {
         instance_create(x,y,obj_ui_winner);
       }
    }

}
