switch(o_menu.menu_state)
{
	case menu_states.active:
		switch(type[0])
		{
			case "New Game":
				PlaySeq(sq_transition,60,seqdir_left);
				time_source_start(timer);
			break;
			
			case "Quick Play":
				PlaySeq(sq_transition,60,seqdir_left);
			break;
			
			case "Credits":
				show_debug_message(type);
			break;
			
			case "Exit":
				game_end();
			break;
		}
	break;
	
}