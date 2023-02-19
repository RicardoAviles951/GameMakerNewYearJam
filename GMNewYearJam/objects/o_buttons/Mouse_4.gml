switch(o_menu.menu_state)
{
	case menu_states.active:
	audio_play_sound(snd_click,1,false);
	o_menu.active = false;
		switch(type[0])
		{
			case "New Game":
				PlaySeq(sq_transition,60,seqdir_left);
				timer = time_source_create(time_source_global,1,time_source_units_seconds,next_room,[true,Room1]);
				time_source_start(timer);
			break;
			
			case "Quick Play":
				timer = time_source_create(time_source_global,1,time_source_units_seconds,next_room,[false,Room1]);
				PlaySeq(sq_transition,60,seqdir_left);
				time_source_start(timer);
			break;
			
			case "Credits":
				timer = time_source_create(time_source_global,1,time_source_units_seconds,next_room,[false,Credits]);
				PlaySeq(sq_transition,60,seqdir_left);
				time_source_start(timer);
				//show_debug_message(type);
			break;
			
			case "Exit":
				game_end();
			break;
		}
	break;
	
}