if(attackKeyHold) {
  if(point_distance(0, 0, horizontalAxis, verticalAxis) > 0.7) {
    aimH = horizontalAxis;
    aimV = verticalAxis;
  }
}
if(attackTimer < global.time && attackKeyReleased) {
  attacked = true;
  attackTimer = global.time + 300000;
  if(!bubbled) {
    var inst = instance_create(x,y,obj_spell);
    with(inst) {
      color = c_white;
      direction = point_direction(other.x,other.y,other.x + other.aimH,other.y + other.aimV);
      owner = other.id;
      var dir = MoveTowards(direction,24);
      x += dir[0];
      y += dir[1];
      attackPower = other.attackPower;
      speed = 12;
    }
  }
}
if(attackKeyHold && attackTimer < global.time ) {
  attackHeld += global.timeScale * delta_time;
  attackPower = clamp(attackHeld/1000000, 0.5, 1);
  part_type_size(global.spellParticles,attackPower,attackPower, 0, 0.2);
  var dir = MoveTowards(point_direction(x,y,x + aimH,y + aimV),24);
  part_particles_create(global.particleSystem, x+dir[0], y+dir[1], global.spellParticles, 2);
} else {
  attackHeld = 0;
}
