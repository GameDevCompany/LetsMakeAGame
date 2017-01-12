var hit = false;
var list = collision_multiple(x,y,obj_enemy);
for (var i = 0; i < ds_list_size(list); i++)
{
  var obj = list[|i];
  KillEnemy(obj); 
  hit = true; 
}

return hit;

