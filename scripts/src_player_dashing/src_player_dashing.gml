///src_payer_dashing()

//show_debug_message("Rolling now " + string(abs(dash_end-x)));
//show_debug_message(string(dash_end));


motion_set(dashdir, move_speed);
if(abs(dash_end-x)<=0){
	friction = 1;
	dashdir = -1;
	
	state = states.idle;
}

if(x <= 0 && dash_end <= 0){
	hspeed = 0;
	
	show_debug_message("Hit Left Wall");;
	dashdir = -1;

	state = states.idle;
	return;
} else if (x >= room_width && dash_end >= room_width ){
	hspeed = 0;
	
	show_debug_message("Hit Right Wall");;
	dashdir = -1;

	state = states.idle;
	return;
}


//aboard dash
//make a fast tap to dash back again
if((keyboard_check_released(vk_left)&&dashdir==0 )|| (keyboard_check_released(vk_right)&&dashdir==180)){
	show_debug_message("Stoppp");
	
	if(dashdir == 0){
		motion_set(180, move_speed);
	} else {
		motion_set(0, move_speed);
	}

	friction = 1;
	dashdir = -1;	
	state = states.idle;

	return;
} 