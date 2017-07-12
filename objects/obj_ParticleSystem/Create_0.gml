/// @description Insert description here
// You can write your code in this editor
PartSys_dashline = part_system_create_layer("Particle_Layer",true);

particle_dash = part_type_create();
part_type_shape(particle_dash,pt_shape_flare);
part_type_size(particle_dash,0.49,0.59,-0.02,0.01);
part_type_alpha1(particle_dash,0.55);
part_type_speed(particle_dash,4.80,6.81,0.04,5);
part_type_direction(particle_dash,90,90,0,20);
part_type_gravity(particle_dash,0,0);
part_type_blend(particle_dash,1);
part_type_life(particle_dash,30,50);