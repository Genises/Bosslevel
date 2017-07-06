if(global.level >= 1){
	state = bossstates.run;
}

	show_debug_message(string(obj_player.fight_state)); 
if(global.level >= 2 && obj_player.fight_state == fighting_states.fight && recent_actions[0] = 0){
	if(abs(obj_player.x - x) > sprite_width*3){
		state = bossstates.defend;
		return;
	}
}