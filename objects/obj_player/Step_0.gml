//left dash
if(keyboard_check(vk_left)&&dashdir!=0){
	roll_distance = roll_distance - 6.66;
	dashdir = 180;
}
//right dash
if(keyboard_check(vk_right)&&dashdir!=180){
	roll_distance = roll_distance + 6.66;
	dashdir = 0;
}
//dash go
if((keyboard_check_released(vk_right) || keyboard_check_released(vk_left)) && !is_dashing){
	if(roll_distance > max_roll_distance){
		roll_distance = max_roll_distance;
	} else if (roll_distance < -max_roll_distance){
		roll_distance = -max_roll_distance;
	}
	
	dash_end = x+roll_distance;
	is_dashing = true;
}

if(is_dashing){
	show_debug_message("Rolling now " + string(abs(dash_end-x)));
	motion_set(dashdir, dashing(abs(dash_end-x),move_speed));
	show_debug_message(string(speed));
	if(abs(dash_end-x)<move_speed){
		show_debug_message("Reached");
		speed = 0;
		is_dashing = false;
		dashdir = -1;
		roll_distance = 0;
	}
}


