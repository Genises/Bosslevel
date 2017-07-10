///src_boss_dash()
//state 5

show_debug_message("Dash away");

if(x < obj_player.x && x >= sprite_width){
	hspeed = -(obj_player.move_speed + 5);
} else if (obj_player.x < x && x <= room_width - sprite_width){
	hspeed = (obj_player.move_speed + 5);
}

state = bossstates.idle;
flag = true;

alarm[3] = 10;
