hit = false;
reset = true;
blockduration = 60;
flag = false;

//functionArray = [src_boss_0, src_boss_1, src_boss_2];

enum bossstates{
	decide,
	idle,
	run,
	defend
}
state = bossstates.idle;


recent_actions[0] = 0;
