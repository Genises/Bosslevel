if(!alive){
	return;
}

switch(state)
{
	case states.idle: src_player_idle(); break;
	case states.dash: src_player_dashing(); break;
}


switch(fight_state)
{
	case fighting_states.fight: src_player_attack(); break;
	case fighting_states.nofight: 
		if(keyboard_check_pressed(vk_space) && !attackedAlready){
			//object attack is currently created at every frame
			attackedAlready = true;
			fight_state = fighting_states.fight;
			fighting = true;
			alarm[0] = duration_fight;
		}
	break;
}

if(last_state != state){
	last_state = state;
	attackedAlready = false;
}