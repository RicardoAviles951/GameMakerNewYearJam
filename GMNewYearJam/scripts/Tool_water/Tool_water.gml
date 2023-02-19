function Tool_water(){
	switch(state)
	{
		case process.moving:
			class.level = o_toolbelt.water_level;
			//In this state the tool should be centerd on the mouse
			x = lerp(x,mouse_x-16,.4);
			y = lerp(y,mouse_y-16,.4);
			//If you click on a tile while having the trowel equipped 
			if left_click or left_hold
			{
			//Check if the tile is actually ground
				//First store the current column and row
				current_col = clamp(o_grid.col,0,17);
				current_row = clamp(o_grid.row,0,10);
				
				//Check the ground array 
				var tile_id = o_grid.GroundArray[current_col,current_row];//store in local var for ease of writing
				//Check if the tile is NOT ground
				if tile_id != 0
				{
					//With statement to avoid confusing chained dot accessors
					with(tile_id)
					{
						//Check if the ground is grass
						if state == ground_state.plant
						{
							//Tutorial Logic 
							if global.tutorial
							{
								with(o_mama)
								{
									if tut == 5
									{
										o_textbox.char_current = 0;
										tut+=1;
									}
								}
							}
							
							//Draw particles
							if o_fx.gui_draw{
								o_fx.reg_draw = true;
								o_fx.gui_draw = false;
							}
							else{
								o_fx.reg_draw = true;
							}
							part_particles_create(o_fx.part_sys,x+8,y+4,o_fx.part_water,1);
							
							//show_debug_message("watered");
							current_plant.class.Wtr_lvl = 1;
							//Turn Grass into plain dirt and changes state
							//Sprite to goto
							work_sprite = current_plant.class.sprite;
							//Index to be in
							work_index = 0;
							//State to goto
							work_state = ground_state.plant;
							//Time to work
							work_time = other.class.time/other.class.level;
							current_tool_sprite = other.class.sprite;
							watered = true;
							
							t_source = time_source_create(
								time_source_game,
								work_time,
								time_source_units_seconds,
								work,[work_sprite,work_index,work_state]
							);
							time_source_start(t_source);
							state = ground_state.transition;
							current_tool_sprite = other.class.sprite;
							if !audio_is_playing(snd_water) audio_play_sound(snd_water,1,false);
							//Turn Grass into plain dirt and changes state
							
						}
						
					}
				}
				else
				{
					//Play a wrong sound or show a message
					//show_debug_message("NOT GROUND");
				}
				//-------end of if tile_id
			}
		break;
	}
}