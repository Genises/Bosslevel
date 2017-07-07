///src_player_attack()
//attack
with(instance_create_depth(x,y,0,obj_hitbox)){
	hspeed = other.hspeed;
	with(instance_place(x,y,obj_boss)){
		
		hit = true;
	}
}
