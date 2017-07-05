/// @description Insert description here
// You can write your code in this editor

if(!hit){
	for (var i = 0; i<=global.level; i++){
		script_execute(functionArray[i]);
	}
} else if(reset){
	reset = false;
	alarm[0] = 100;
	global.level++;
	if(global.level == global.maxlevel){
		instance_destroy();
	}
}