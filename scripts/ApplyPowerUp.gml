var enable = argument0;
if(powerUpName != '') {
  if(global.time > powerUpTime + powerUpCoolDown || !enable) {
    var asset = asset_get_index("PowerUp_"+powerUpName);
    script_execute(asset, false);
    powerUpTime = 0;
    powerUpCoolDown = 0;
    powerUpName = '';
  } else {
    var asset = asset_get_index("PowerUp_"+powerUpName);
    script_execute(asset, true);
  }
}
