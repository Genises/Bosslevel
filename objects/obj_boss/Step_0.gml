/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Ai State: " + string(state));
//show_debug_message("level: " + string(global.level));


switch(state)
{
	case bossstates.idle: src_boss_idle(); break;
	case bossstates.run: src_boss_run(); break;
	case bossstates.defend: src_boss_defend(); break;
}

for(var i = 0; i < array_length_1d(recent_actions); i++){
	if(recent_actions[i] > 0){
		recent_actions[i]--;
		//show_debug_message("Skill reset " + string(i));
	} 
}


if(hit && reset && state != bossstates.defend){
	state = bossstates.idle;
	reset = false;
	alarm[0] = 100;
	global.level++;
	show_debug_message("Level Up");
	if(global.level == global.maxlevel){
		instance_destroy();
	}
}

if(!flag){
	src_boss_decide();
}