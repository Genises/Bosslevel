/// @description Insert description here
// You can write your code in this editor

surface = noone;

application_surface_draw_enable(false);

u_resolution = shader_get_uniform(Schockwave,"iResolution");
u_seconds = shader_get_uniform(Schockwave,"iGlobalTime");
u_mouse = shader_get_uniform(Schockwave,"iMouse");
u_texture = shader_get_sampler_index(Schockwave,"tex_Background");

seconds = 0;