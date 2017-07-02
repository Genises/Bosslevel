if(keyboard_check(vk_left)&&dashdir!=0){
	roll_distance = roll_distance + 6.66;
	dashdir = 180;
}
if(keyboard_check(vk_right)&&dashdir!=180){
	roll_distance = roll_distance + 6.66;
	dashdir = 0;
}
if(keyboard_check_released(vk_right) || keyboard_check_released(vk_left)){

	if(roll_distance > max_roll_distance){
		roll_distance = max_roll_distance;
	}

	motion_add(dashdir,roll_distance);	
	show_debug_message("Rolling now " + string(roll_distance));
	
	roll_distance = 0;
	dashdir = -1;
}



