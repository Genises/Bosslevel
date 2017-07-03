///src_payer_idle()

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
if((keyboard_check_released(vk_right) || keyboard_check_released(vk_left))){
	if(roll_distance > max_roll_distance){
		roll_distance = max_roll_distance;
	} else if (roll_distance < -max_roll_distance){
		roll_distance = -max_roll_distance;
	}
	
	dash_end = x + roll_distance;
	state = states.dash;
	friction = 0;
}