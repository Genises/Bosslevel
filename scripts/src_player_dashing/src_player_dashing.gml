///src_payer_dashing()

//show_debug_message("Rolling now " + string(abs(dash_end-x)));
//show_debug_message(string(dash_end));
//show_debug_message(string(x));

motion_set(dashdir, src_exponential_dash(abs(dash_end-x),move_speed));
if(abs(dash_end-x)<=move_speed){
	show_debug_message("Reached");
	friction = 0.1;
	dashdir = -1;
	roll_distance = 0;
	
	state = states.idle;
}

if(x <= 0 && dash_end <= 0){
	x = 0;
	hspeed = 0;
	
	show_debug_message("Hit Left Wall");;
	dashdir = -1;
	roll_distance = 0;
	state = states.idle;
} else if (x >= room_width && dash_end >= room_width ){
	x = room_width;
	hspeed = 0;
	
	show_debug_message("Hit Right Wall");;
	dashdir = -1;
	roll_distance = 0;
	state = states.idle;
}