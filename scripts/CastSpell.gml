if(attackKeyHold) {
  if(point_distance(0, 0, horizontalAxis, verticalAxis) > 0.7) {
    aimH = horizontalAxis;
    aimV = verticalAxis;
  }
}

if(attackTimer < global.time && attackKeyReleased) {
  attacked = true;
  attackTimer = global.time + 300000;

  var inst = instance_create(x,y,obj_projectile);
  with(inst) {
    color = c_white;
    direction = point_direction(other.x,other.y,other.x + other.aimH,other.y + other.aimV);
    owner = other.id;
    hitCharacters = false;
    var dir = MoveTowards(direction,84);
    var xx = x+dir[0];
    var yy = y+dir[1];
    var hit = Raycast(x,y,xx,yy,root_block);
    if(is_array(hit)) {
      x = hit[0];
      y = hit[1];
    } else {
      x = xx;
      y = yy;
    }
    spd = 30;
  }
}

if(attackKeyHold && attackTimer < global.time ) {
  attackHeld += global.timeScale * delta_time;
  attackPower = clamp(attackHeld/1000000, 1, 1);

  var dir = MoveTowards(point_direction(x,y,x + aimH,y + aimV),84);
  particleReduction = -attackPower*0.0025;
  part_type_size(global.spellfill,attackPower,attackPower, particleReduction, 0.1);
  part_type_size(global.spellinner,attackPower*0.75,attackPower*0.9, particleReduction, 0);
  part_type_size(global.spelldark,attackPower*0.9,attackPower*0.9, 0, 0);
  part_particles_create(global.particleSystem, x+dir[0], y+dir[1], global.spellfill, 1);
  part_particles_create(global.particleSystem, x+dir[0], y+dir[1], global.spellinner, 1);
 part_particles_create(global.particleSystem, x+dir[0], y+dir[1], global.spelldark, 1);
} else {
  attackHeld = 0;
}
