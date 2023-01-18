function Tool_trowel(){
	//First we check if we in the moving state
	switch(state)
	{
		case process.moving:
		
			//In this state the tool should be centerd on the mouse
			x = mouse_x - 16;
			y = mouse_y - 16
			//If you click on a tile while having the trowel equipped 
			if left_click or left_hold
			{
			//Check if the tile is actually ground
				//First store the current column and row
				current_col = o_grid.col;
				current_row = o_grid.row;
				
				//Check the ground array 
				var tile_id = o_grid.GroundArray[current_col,current_row];//store in local var for ease of writing
				//Check if the tile is NOT ground
				if tile_id != 0
				{
					
					//With statement to avoid confusing chained dot accessors
					with(tile_id)
					{
						//Check if the ground is dirt
						if state == ground_state.dirt
						{
							show_debug_message("dirt!");
							//Sprite to goto next
							work_sprite = s_dirt_hole;
							//Index to be in
							work_index = 0;
							//State to goto next
							work_state = ground_state.dirt_hole;
							//Time to work
							work_time = other.class.time;
							current_tool_sprite = other.class.sprite;
							//Creates time source and starts it from here 
							t_source = time_source_create(
								time_source_game,
								work_time,
								time_source_units_seconds,
								work,[work_sprite,work_index,work_state]
							);
							time_source_start(t_source);
							//Goto transistion state for ground 
							if !audio_is_playing(snd_dig) audio_play_sound(snd_dig,1,false);
							state = ground_state.transition; 
						}
						
					}
				}
				else
				{
					//Play a wrong sound or show a message
					show_debug_message("NOT GROUND");
				}
				//-------end of if tile_id
			}
		break;
	}
	
}//end of function