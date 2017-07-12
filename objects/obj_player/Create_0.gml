max_roll_distance = 800; //In pixel
roll_distance = 0; //how far to roll
dash_end = 0; //world x position
dashdir = -1; //left or right

move_speed = 15; 
duration_fight = 60;

dashline = 0;
sum_of_move_speed = (sqr(move_speed)+move_speed)/2;

enum states{
	dash,
	idle
}

state = states.idle;


enum fighting_states{
	fight,
	nofight
}

fight_state = fighting_states.nofight;