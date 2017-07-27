///src_boss_run()
//state 1

//show_debug_message(string(display_get_width()) + " " + string(x));
if(x < obj_player.x && x >= sprite_width){
	x = x - movement_speed;
} else if (obj_player.x < x && x <= room_width - sprite_width){
	x = x + movement_speed;
}

//show_debug_message(string(x));

if(global.level>=4 && (random(random_position_change)<1 || fury>=70)){
	movestate = bossmovestates.advance;
	show_debug_message("AdvancePlayer")
}
