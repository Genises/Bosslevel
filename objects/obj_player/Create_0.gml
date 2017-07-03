max_roll_distance = 800; //In pixel
roll_distance = 0; //how far to roll
dash_end = 0; //world x position
dashdir = -1; //left or right

move_speed = 10; 

enum states{
	dash,
	idle
}

state = states.idle;