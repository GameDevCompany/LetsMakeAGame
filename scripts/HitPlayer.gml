var hit = false;
var list = collision_multiple(x,y,obj_character);
for (var i = 0; i < ds_list_size(list); i++)
{
  var obj = list[|i];
  with(obj) {
    KillCharacter();
  } 
  hit = true; 
}

return hit;
