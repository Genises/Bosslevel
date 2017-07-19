//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 fragCoord;

uniform vec2    iResolution;           // viewport resolution (in pixels)
uniform vec2    iMouse;                // mouse pixel coords. xy: current (if MLB down), zw: click
uniform float   iGlobalTime;

uniform sampler2D  tex_Background;


void main()
{
    //Sawtooth function to pulse from centre.
    float offset = (iGlobalTime- floor(iGlobalTime))/iGlobalTime;
	float CurrentTime = (iGlobalTime)*(offset);    
    
	vec4 WaveParams = vec4(10.0, 0.5, 0.1 ,20.0); 
    
    float ratio = iResolution.y/iResolution.x;
    
    //Use this if you want to place the centre with the mouse instead
	vec2 WaveCentre = vec2( iMouse.xy / iResolution.xy );   
	
	//vec2 WaveCentre = vec2(0.5, 0.5);
	//WaveCentre.y *= ratio; 
   
	vec2 texCoord = fragCoord.xy / iResolution.xy;      
    //texCoord.y *= ratio;    
	float Dist = distance(texCoord, WaveCentre);
    
	vec4 Color = texture2D(tex_Background, texCoord);
	
//Only distort the pixels within the parameter distance from the centre
if ((Dist <= ((CurrentTime) + (WaveParams.z))) && (Dist >= ((CurrentTime) - (WaveParams.z)))) 
	{
        //The pixel offset distance based on the input parameters
		float Diff = (Dist - CurrentTime); 
		float ScaleDiff = (1.0 - pow(abs(Diff * WaveParams.x), WaveParams.y)); 
		float DiffTime = (Diff  * ScaleDiff);
        
        //The direction of the distortion
		vec2 DiffTexCoord = normalize(texCoord );         
        
        //Perform the distortion and reduce the effect over time
		texCoord += ((DiffTexCoord * DiffTime) / (CurrentTime * Dist * WaveParams.w));
		Color = texture2D(tex_Background, texCoord);
        
        //Blow out the color and reduce the effect over time
		Color += (Color * ScaleDiff) / (CurrentTime * Dist * WaveParams.w);
	} 
    
	gl_FragColor = Color; 
}