/// @description Insert description here
// You can write your code in this editor

surface = noone;

application_surface_draw_enable(false);

u_resolution = shader_get_uniform(Schockwave2,"iResolution");
u_seconds = shader_get_uniform(Schockwave2,"iGlobalTime");
u_mouse = shader_get_uniform(Schockwave2,"iMouse");
u_texture = shader_get_sampler_index(Schockwave2,"tex_Background");

seconds = 0;