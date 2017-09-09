/// @description Insert description here
// You can write your code in this editor

if(!global.gameover && !obj_player.fighting && !hit && attacking){
	with(obj_player){
		show_debug_message("PlayerHit");
		global.gameover = true;
		
		global.timeScale = 0.3;
		//room_speed = 20;
		
		instance_create_layer(x,y,"Particle_Layer",obj_shader_schockwave);
		obj_gamemanager.alarm[0] = 60;
		
		alive = false;
		src_slowmo(true,4);
		
		if(x<other.x){
			hspeed = -5;
		}else{
			hspeed = 5;
		}
	}
}