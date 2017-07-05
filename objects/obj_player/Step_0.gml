switch(state)
{
	case states.idle: src_player_idle(); break;
	case states.dash: src_player_dashing(); break;
}


switch(fight_state)
{
	case fighting_states.fight: src_player_attack(); break;
	case fighting_states.nofight: 
		if(keyboard_check_pressed(vk_space)){
			//object attack is currently created at every frame
			fight_state = fighting_states.fight;
			alarm[0] = duration_fight;
		}
	break;
}