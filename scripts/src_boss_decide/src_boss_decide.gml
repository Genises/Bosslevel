if(global.level >= 1){
	state = bossstates.run;
}

if(global.level >= 2 && obj_player.fight_state && !blocking && recent_actions[0] == 0){
	state = bossstates.defend;
	return;
}