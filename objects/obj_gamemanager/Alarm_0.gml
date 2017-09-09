/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_shader_schockwave);

global.gameover = false;

src_slowmo(false,4);

//reset payer state
obj_player.alive = true;
obj_player.state = states.idle;
obj_player.hspeed = 0;
obj_player.dashdir = -1;	