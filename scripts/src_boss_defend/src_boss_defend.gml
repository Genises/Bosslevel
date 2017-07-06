///src_boss_defend()
//state 3
//drittel Chance den Schlag zu blocken, alarm 1 leuet block ein, alarm 2 endet das blocken
recent_actions[0] = 300;

if(irandom_range(0,2) <= 1 && !blocking){
	blocking = true;
	alarm[1] = obj_player.duration_fight/2;
} else {
	state = bossstates.decide;
}
