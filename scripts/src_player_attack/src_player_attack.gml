///src_player_attack()
//attack
with(instance_create_depth(x,y,0,obj_hitbox)){
	with(instance_place(x,y,obj_boss)){
		hit = true;
		show_debug_message("Hit");
	}
}
