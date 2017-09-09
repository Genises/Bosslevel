///src_payer_idle()

//left dash
if(hspeed != 0){
	return;
}

if(keyboard_check(vk_left)&&dashdir!=0 && roll_distance > -max_roll_distance){
	roll_distance = roll_distance - 15;
	dashdir = 180;
}
//right dash
if(keyboard_check(vk_right)&&dashdir!=180 && roll_distance < max_roll_distance){
	roll_distance = roll_distance + 15;
	dashdir = 0;
}


//dash go
if((keyboard_check_released(vk_right) || keyboard_check_released(vk_left))){
	dash_end = x + roll_distance;
	roll_distance = 0;
	
	friction = 0;
	state = states.dash;
	
}

//show_debug_message(string(dashline));
	
//For dashline calculation	
if(roll_distance != 0){
	var xx;
	if(dashdir == 180){
		xx = x + roll_distance - (sum_of_move_speed);
	} else {
		xx = x + roll_distance + (sum_of_move_speed);
	}
	xx = clamp(xx, 0, room_width);
	
	src_particle_dashline(xx,y+40);
}