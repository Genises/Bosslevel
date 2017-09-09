///src_boss_junmpattack()
//state 4
//drittel Chance den Schlag zu blocken, alarm 1 leuet block ein, alarm 2 endet das blocken

show_debug_message("Boss Jumpattack");
attacking = true;
flag = true;


path_start(pat_boss_jump_attack,1,path_action_stop,false);