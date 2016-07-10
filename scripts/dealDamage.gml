var inst = argument0;
var dmg = argument1;
var playerIndex = argument2;
var posX = argument3;
var posY = argument4;

if (inst != noone) {
    with(inst) {
        if(global.takeDamage) {
          HP -= dmg;
        }
        //global.shakeAmount = 4*dmg;
        //global.shakeTime = 450000*dmg;
        
        if(HP <= 0 && global.gameMode == "DeathMatch") {
          IncreaseScore(playerIndex);
        }
     
        damageColor = 255;
        
        var flipX = 180 * ((other.image_xscale*0.5)-0.5);
        var dash = MoveTowards(other.image_angle + flipX + (10*other.image_xscale), 19);
        horizontalSpeed += dash[0];
        verticalSpeed += dash[1];
    }
}

