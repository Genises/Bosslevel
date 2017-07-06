///src_boss_defend()
//state 3
//drittel Chance den Schlag zu blocken, alarm 1 leuet block ein, alarm 2 endet das blocken
if(recent_actions[0] > 0){
	return;
}

recent_actions[0] = 300;
if(irandom_range(0,2) <= 1){
	show_debug_message("Block worked");
	alarm[1] = blockduration + random_range(-blockduration/2,blockduration/2);
	image_blend = make_colour_hsv(255, 255, random(255));
	flag = true;
} else {
	show_debug_message("Block failed");
}
