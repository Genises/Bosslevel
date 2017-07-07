hit = false;
reset = true;
faing = true; //true == right , false == left

blockduration = 60;
blocking = false;

attacking = false;


flag = false;

//functionArray = [src_boss_0, src_boss_1, src_boss_2];

enum bossstates{
	decide,
	idle,
	run,
	defend,
	attack
}
state = bossstates.idle;


recent_actions = [0,0,0,0,0];
