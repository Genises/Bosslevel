if(!attackflag){
	//closeCombat
	if(abs(obj_player.x - x) < 200){
		switch(random(0)){
			case 0:
				attackstate = bossattackstates.attack;
		}
	} else {
	}
}


switch(attackstate)
{
	case bossattackstates.attack: src_boss_attack(); break;
	case bossattackstates.easycombo: src_boss_easycombo(); break;
}
