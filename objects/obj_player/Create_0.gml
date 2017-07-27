max_roll_distance = 800; //In pixel
roll_distance = 0; //how far to roll
dash_end = 0; //world x position
dashdir = -1; //left or right

move_speed = 15; 
duration_fight = 10;
attackedAlready = false;

dashline = 0;
sum_of_move_speed = (sqr(move_speed-1)+move_speed-1)/2;

alive = true;

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

last_state = state;