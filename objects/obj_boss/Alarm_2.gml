/// @description Attack
if(attacking){
	if(facing){
		hspeed = 5;
	}else{
		hspeed = -5;
	}	
	alarm[2] = 20;
	attacking = false;
} else {
	flag = false;
	hspeed = 0;
	sprite_index = spr_enemy;
}
