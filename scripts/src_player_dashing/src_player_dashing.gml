///src_payer_dashing()
show_debug_message("Rolling now " + string(abs(dash_end-x)));
show_debug_message(string(speed));

motion_set(dashdir, src_exponential_dash(abs(dash_end-x),move_speed));
if(abs(dash_end-x)<move_speed){
	show_debug_message("Reached");
	speed = 0;
	dashdir = -1;
	roll_distance = 0;
	
	state = states.idle;
}

