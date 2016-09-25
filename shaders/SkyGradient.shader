//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_vPosition = gl_Position.xyz;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform vec4 tex;
uniform float height;

float norm(float val) {
    val /= 2.0;
    val += 0.5;
    return val;
}

float norm2(float val) {
    return 1.0 - abs(val);
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

float stagger(float val, float amount) {
    val *= amount;
    val = floor(val);
    val /= amount;
    return val;
}

void main()
{

    float value = stagger(norm(sin(((1.0-norm(v_vPosition.y)) + (height/100.0))*0.5)),200.0);
    value = clamp(norm(v_vPosition.y),0.5,1.0);
    
    float pos = v_vTexcoord.y - tex.y;
    float total = tex.y + mod(pos+(height/1000.0),tex.w);
    total += tex.y;
   
    vec2 textureCoord = vec2(v_vTexcoord.x,total);
    
    vec4 texture = v_vColour * texture2D( gm_BaseTexture, textureCoord );
    vec3 col = hsv2rgb(vec3(value,1,1));
    col.b *= 1.1;
    //col.r, col.g *= 0.9;
    
    
    gl_FragColor.rgb = col;// * texture.rgb;
    gl_FragColor.a = 1.0;
}

