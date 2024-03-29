/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Ai State: " + string(state));
//show_debug_message("level: " + string(global.level));

show_debug_message(string(attacking));


switch(state)
{
	case bossstates.idle: src_boss_idle(); break;
	case bossstates.move: src_boss_decide_move(); break;
	case bossstates.defend: src_boss_decide_defend(); break;
	case bossstates.attack: src_boss_decide_attack(); break;
}

for(var i = 0; i < array_length_1d(recent_actions); i++){
	if(recent_actions[i] > 0){
		recent_actions[i]--;
		//show_debug_message("Skill reset " + string(i));
	} 
}


if(hit && reset){
	state = bossstates.idle;
	sprite_index = spr_enemy_down;
	flag = true;
	reset = false;
	alarm[0] = 300;
	speed = 0;
	global.level++;
	show_debug_message("Level Up");
	if(global.level == global.maxlevel){
		instance_destroy();
	}
	
	for(var i = 1; i <= array_length_1d(recent_actions); i++){
		alarm_set(i,-1);
	} 
}

src_boss_decide();