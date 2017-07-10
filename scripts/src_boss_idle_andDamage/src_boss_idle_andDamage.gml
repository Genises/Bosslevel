///src_boss_idle()
//state 0 && when player gets Damage

if(doDamage && !global.gameover){
	with(instance_place(x,y,obj_player)){
		show_debug_message("PlayerHit");
		//global.gameover = true;
	}
}