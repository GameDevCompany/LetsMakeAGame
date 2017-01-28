var hit = false;
var breakBlock = argument0;
var list = collision_multiple(x,y,root_block);
for (var i = 0; i < ds_list_size(list); i++)
{
  var obj = list[|i];
  with(obj) {
    if(breakBlock) {
      BreakBlock();
    }
  }
  hit = true; 
}

return hit;

