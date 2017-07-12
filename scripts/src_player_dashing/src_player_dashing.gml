///src_payer_dashing()

//show_debug_message("Rolling now " + string(abs(dash_end-x)));
//show_debug_message(string(dash_end));


motion_set(dashdir, src_exponential_dash(abs(dash_end-x),move_speed));
if(abs(dash_end-x)<=0){
	friction = 1;
	dashdir = -1;
	
	state = states.idle;
}

if(x <= 0 && dash_end <= 0){
	x = 0;
	hspeed = 0;
	
	show_debug_message("Hit Left Wall");;
	dashdir = -1;

	state = states.idle;
	return;
} else if (x >= room_width && dash_end >= room_width ){
	x = room_width;
	hspeed = 0;
	
	show_debug_message("Hit Right Wall");;
	dashdir = -1;

	state = states.idle;
	return;
}


//aboard dash
if((keyboard_check(vk_left)&&dashdir==0 )|| (keyboard_check(vk_right)&&dashdir==180)){
	show_debug_message("Stoppp");
	friction = 0.8;
	dashdir = -1;
	
	state = states.idle;
	return;
} 