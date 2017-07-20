/// @description Insert description here
// You can write your code in this editor

/*
if(surface_exists(surface)){
	surface_copy(surface,0,0,application_surface);
	
	shader_set(Schockwave);
	shader_set_uniform_f(u_resolution,room_width,room_height);
	shader_set_uniform_f(u_seconds,sec);
	
	draw_surface(surface,0,0);//Draw ours now on application
	
	
	shader_reset();
	
} else {
	surface = surface_create(room_width,room_height);
}
*/

//draw_surface(application_surface,0,0);


shader_set(Schockwave);

shader_set_uniform_f(u_resolution,room_width,room_height);
shader_set_uniform_f(u_seconds,seconds);
shader_set_uniform_f(u_mouse,x,y);
texture_set_stage(u_texture, surface_get_texture(application_surface));

draw_rectangle(0,0,room_width,room_height,false);
	
shader_reset();

