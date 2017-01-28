if(global.paused) exit;
CleanObjects();

var character = FindClosestCharacter();
if(character != noone) {
  if(timer < global.time) {
    timer = global.time + random_range(0.5*global.milli,0.7*global.milli);
    if(collision_line(x, y,character.x,character.y, root_block, false, true ) == noone) {
      var inst = instance_create(x,y,obj_projectile);
      with(inst) {
        color = c_white;
        direction = point_direction(other.x,other.y,character.x,character.y);
        owner = other.id;
        var dir = MoveTowards(direction,84);
        horizontalSpeed = dir[0];
        hitEnemies = false;
        sprite_index = spr_seed;
        destroyBlocks = false;
        x += dir[0];
        y += dir[1];
        spd = 15;
      }
    }
  }
}
FlipObject();
