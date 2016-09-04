var objects;

objects[0] = noone;
objects[1] = obj_cobbleblock;
objects[2] = obj_metalblock;

var spacing = 32;
global.lvlspd = 5+(height/500);
for(var i = 0; i < (view_wview[0])/spacing; i++) {
  var xPos = (i*spacing);
  var obj = real(string_char_at(level[pos], i+1));
  if(obj != 0) {
    var inst = instance_create(xPos+16,view_hview[0]+32,objects[obj]);
    with(inst) {
      verticalSpeed = -global.lvlspd;
      brokeFree = random_range(1,20);
      if(brokeFree < 5) {
        verticalSpeed += random_range(-0.5, 0.5);
        horizontalSpeed = random_range(-0.5, 0.5);
        rotationSpeed = random_range(-1,1);
      }
    }
  }     
}  
pos ++;
if(pos >= array_length_1d(level)) {
    pos = 0;
}

alarm[0] = room_speed/global.lvlspd;
