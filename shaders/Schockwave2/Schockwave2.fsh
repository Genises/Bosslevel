//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 fragCoord;

uniform vec3      iResolution;           // viewport resolution (in pixels)
uniform vec4      iMouse;                // mouse pixel coords. xy: current (if MLB down), zw: click
uniform float   iGlobalTime;

uniform sampler2D  tex_Background;


void main()
{
	 vec3 waveParams = vec3( 10.0, 0.8, 0.13 );
	 vec2 tmp = vec2( iMouse.xy / iResolution.xy );
	 vec2 uv = fragCoord.xy / iResolution.xy;
	 vec2 texCoord = uv;
	 float distance = distance(uv, tmp);
	 
	 if ( (distance <= ((iGlobalTime ) + waveParams.z )) && ( distance >= ((iGlobalTime ) - waveParams.z)) ) 
	 {
		    float diff = (distance - (iGlobalTime)); 
		    float powDiff = 1.0 - pow(abs(diff*waveParams.x), waveParams.y); 
		 
		    float diffTime = diff  * powDiff; 
		    vec2 diffUV = normalize(uv - tmp); 
		    texCoord = uv + (diffUV * diffTime);
		    
	 } 
	 vec4 original = texture2D(tex_Background, texCoord);
	 gl_FragColor = original; 
}