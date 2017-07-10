///src_boss_defend()
//show_debug_message(string(display_get_width()) + " " + string(x));
if(x < obj_player.x){
	x++;
} else if (x > obj_player.x){
	x--;
}

if(random(random_position_change)<1){
	movestate = bossmovestates.run;
	show_debug_message("RunFromPlayer")
}