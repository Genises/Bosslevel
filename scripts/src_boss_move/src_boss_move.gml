///src_boss_move()
//Takes care of movement


switch(movestate)
{
	case bossmovestates.run: src_boss_run(); break;
	case bossmovestates.advance: src_boss_advance(); break;
}