if(flag){
	return;
}

if(global.level == 0){
	state = bossstates.idle;
}

if(global.level >= 1){
	state = bossstates.move;
}

//show_debug_message(string(obj_player.fight_state)); 

//defend
if(global.level >= 2 && obj_player.fight_state == fighting_states.fight && recent_actions[0] = 0){
	recent_actions[0] = 300;
	if(random(3) <= 2){
		show_debug_message("Blocking");
		state = bossstates.defend;
		return;
	} else {
		show_debug_message("Block failed");
	}
}

//attack
if(global.level >= 3 && random(5) <= 2 && recent_actions[1] = 0){
		recent_actions[1] = 300;
		state = bossstates.attack;
		return;
}