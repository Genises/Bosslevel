
if(!attackflag){
	if(abs(obj_player.x - x) < 200){
		bossattackstates = bossattackstates.attack;
	} else {
		return;
	}
}


switch(attackstate)
{
	case bossattackstates.attack: src_boss_attack(); break;
	case bossattackstates.easycombo: src_boss_easycombo(); break;
}
