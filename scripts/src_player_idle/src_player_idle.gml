///src_payer_idle()


//In case we slide beyond the border in dasing
x = clamp(x, 0, room_width);
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
	
	instance_destroy(dashline);
	dashline = 0;
}

	//show_debug_message(string(dashline));
	
if(roll_distance != 0){
	if(dashline == 0){
		dashline = instance_create_layer(x, y, "Instances", obj_player_dash_distance);
	}
	with (dashline)
		{
			show_debug_message("dashlin" +string(other.x + other.roll_distance ));
			if(other.dashdir== 180){
				x = other.x + other.roll_distance - (other.sum_of_move_speed);
			} else {
				x = other.x + other.roll_distance + (other.sum_of_move_speed);
			}
		}
}