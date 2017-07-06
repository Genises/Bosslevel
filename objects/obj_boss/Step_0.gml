/// @description Insert description here
// You can write your code in this editor

show_debug_message("Ai State: " + string(state));
show_debug_message("level: " + string(global.level));

for(var i = 0; i < array_length_1d(recent_actions); i++){
	if(recent_actions[i] > 0){
		recent_actions[i]--;
		show_debug_message("Skill reset Nr. : " + string(state));
	}
}

switch(state)
{
	case bossstates.decide: src_boss_decide(); break;
	case bossstates.idle: src_boss_idle(); break;
	case bossstates.run: src_boss_run(); break;
	case bossstates.defend: src_boss_defend(); break;
}


if(hit && reset && !blocking){
	state = bossstates.idle;
	reset = false;
	alarm[0] = 100;
	global.level++;
	if(global.level == global.maxlevel){
		instance_destroy();
	}
}