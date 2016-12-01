var colObject = argument0;
var dazed = true;
if(verticalSpeed >= 0) {
  var list = collision_multiple(x+horizontalSpeed,y+verticalSpeed+1,colObject);
  for (var i = 0; i < ds_list_size(list); i++)
  {
      var obj = list[|i];
      with (obj) {
        if(breakable) {
          BreakBlock();
        }
      }
  }
  if(ds_list_size(list) > 0) {
    if(verticalSpeed > 0) {
      dazed = false;
    }
  }
}
return dazed;
