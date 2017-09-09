if(!defendflag){
	//closeCombat
	if(abs(obj_player.x - x) < 200){
		defendstate = bossdefendstates.block;
	}	else {
		defendstate = bossdefendstates.dash;
	}
}


switch(defendstate)
{
	case bossdefendstates.block: src_boss_block(); break;
	case bossdefendstates.dash: src_boss_dash(); break;
}
