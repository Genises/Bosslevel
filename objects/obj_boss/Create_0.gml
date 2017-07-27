hit = false;
reset = true;
faing = true; //true == right , false == left

blockduration = 60;
blocking = false;

attacking = false;
doDamage = false;

movement_speed = 1;

random_position_change = 100;

//flags to stop decision making
flag = false;
attackflag = false;
moveflag = false;
defendflag = false;

//0 is block, 1 is attack, 2 is dash
recent_actions = [0,0,0,0,0];
fury = 0;

//functionArray = [src_boss_0, src_boss_1, src_boss_2];

enum bossstates{
	idle,
	defend,
	attack,
	move,
}
state = bossstates.idle;

enum bossmovestates{
	run,
	walk,
	advance
}
movestate = bossmovestates.run;

enum bossattackstates{
	attack,
	easycombo
}
attackstate = bossattackstates.attack;

enum bossdefendstates{
	block,
	dash
}
defendstate = bossattackstates.attack;


