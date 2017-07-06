///src_boss_run()
//state 1

//show_debug_message(string(display_get_width()) + " " + string(x));
if(x < obj_player.x && x >= sprite_width){
	x--;
} else if (x <= room_width - sprite_width){
	x++;
}