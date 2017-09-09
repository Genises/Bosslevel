/// @description Defend and reset
// You can write your code in this editor


if(!blocking){
	sprite_index = spr_enemy_block;
	blocking = true;
	alarm[1] = blockduration + random_range(-blockduration/2,blockduration/2);
} else {
	blocking = false;
	flag = false;
	sprite_index = spr_enemy;
}