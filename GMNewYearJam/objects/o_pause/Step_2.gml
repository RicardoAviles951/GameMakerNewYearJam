GetInput();


if key_p or escape
{
		instance_deactivate_all(true);
		if global.pause == false
		{
			instance_deactivate_all(true);
			audio_pause_all();
			window_set_cursor(cr_default);
			global.pause = true;
		}
		else
		{
			instance_activate_all();
			audio_resume_all();
			window_set_cursor(cr_none);
			global.pause = false;
		}
	
}

if global.pause and enter{
	audio_stop_all();
	window_set_cursor(cr_none);
	room_goto(Menu);
}