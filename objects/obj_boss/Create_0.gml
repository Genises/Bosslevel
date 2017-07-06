hit = false;
reset = true;
blocking = false;
blockduration = 60;

//functionArray = [src_boss_0, src_boss_1, src_boss_2];

enum bossstates{
	decide,
	idle,
	run,
	defend
}
state = bossstates.idle;



recent_actions[0] = 0;
