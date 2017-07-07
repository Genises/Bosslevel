///src_exponential_dash(distance,move_speed)

distance = argument0; // argument0 is first param - number 1
move_speed = argument1; // argument1 is second param - number 2

return (-(power(0.98,distance-113))+move_speed);
//-(0.98^(x-113))+10 formula for jump speed