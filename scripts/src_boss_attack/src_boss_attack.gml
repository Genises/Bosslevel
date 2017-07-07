///src_boss_attack()
//state 4
//drittel Chance den Schlag zu blocken, alarm 1 leuet block ein, alarm 2 endet das blocken


flag = true;


	if(x<obj_player.x){
		sprite_index = spr_enemy_attack_R;
		facing = true;
	} else {
		sprite_index = spr_enemy_attack_L;
		facing = false;
	}
	alarm[2] = random_range(20,50);
	attacking = true;

state = bossstates.idle;