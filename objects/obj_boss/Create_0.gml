hit = false;
reset = true;
faing = true; //true == right , false == left

blockduration = 60;
blocking = false;

attacking = false;
doDamage = false;

random_position_change = 100;

flag = false;


//functionArray = [src_boss_0, src_boss_1, src_boss_2];

enum bossstates{
	decide,
	idle,
	defend,
	attack,
	move,
	dash
}
state = bossstates.idle;

enum bossmovestates{
	run,
	walk,
	advance
}
movestate = bossmovestates.run;

//0 is block, 1 is attack, 2 is dash
recent_actions = [0,0,0,0,0];
fury = 0;
