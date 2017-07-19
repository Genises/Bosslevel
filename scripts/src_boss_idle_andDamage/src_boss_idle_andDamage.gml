///src_boss_idle()
//state 0 && when player gets Damage

if(doDamage && !global.gameover){
	with(instance_place(x,y,obj_player)){
		show_debug_message("PlayerHit");
		global.gameover = true;
		
		global.timeScale = 0.3;
		//room_speed = 20;
		
		instance_create_layer(x,y,"Particle_Layer",obj_shader_schockwave);
		obj_gamemanager.alarm[0] = 60;
	}
}