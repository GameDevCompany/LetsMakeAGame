var speedX = argument0;
var speedY = argument1;
var sprite = argument2;
var opacity = argument3;



var half_width = sprite_get_width(sprite)/2;
var half_height = sprite_get_height(sprite)/2;

var dir = 360-point_direction(0,0,speedX,speedY);
var dist = point_distance(0,0,speedX,speedY);
m_array = matrix_build(0, 0, 0, 0, 0, dir,1 , 1, 1);
matrix_set(matrix_world, m_array);
a = d3d_transform_vertex( -half_width, -half_height, 0);
b = d3d_transform_vertex( half_width, -half_height, 0);
c = d3d_transform_vertex( half_width, half_height, 0);
d = d3d_transform_vertex( -half_width, half_height, 0);

f = d3d_transform_vertex(speedX * half_width * 0.5, speedY * half_height * 0.5, 0);

m_array = matrix_build(f[0],f[1],0,0,0,0,1-(dist*0.3),1+(dist*0.3) , 1);
matrix_set(matrix_world, m_array);
a = d3d_transform_vertex( a[0],a[1], 0);
b = d3d_transform_vertex( b[0],b[1], 0);
c = d3d_transform_vertex( c[0],c[1], 0);
d = d3d_transform_vertex( d[0],d[1], 0);

m_array = matrix_build(0,0,0,0,0,-dir,1 ,1, 1);
matrix_set(matrix_world, m_array);
a = d3d_transform_vertex( a[0],a[1], 0);
b = d3d_transform_vertex( b[0],b[1], 0);
c = d3d_transform_vertex( c[0],c[1], 0);
d = d3d_transform_vertex( d[0],d[1], 0);

d3d_transform_set_identity();
draw_sprite_pos(sprite, image_index, 
  x+a[0],y+a[1], 
  x+b[0],y+b[1], 
  x+c[0],y+c[1], 
  x+d[0],y+d[1],
  opacity 
);
