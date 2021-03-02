//
// Outline Shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetx;
	offsetx = vec2(pixelH, 0);
	vec2 offsety;
	offsety = vec2(0, pixelW);
	
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord).a;
	
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsetx ).a);
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetx ).a);
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsety ).a);
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetx ).a);
	
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
}
