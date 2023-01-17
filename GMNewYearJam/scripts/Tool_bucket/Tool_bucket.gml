function Tool_bucket(){
	//First we check if we in the moving state
	switch(state)
	{
		case process.moving:
			//Disable sidebar here
			
			
			
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
				show_debug_message(current_row);
				//Check the ground array 
				var tile_id = o_grid.GroundArray[current_col,current_row];//store in local var for ease of writing
				//Check if the tile is NOT ground
				if tile_id != 0
				{
					//With statement to avoid confusing chained dot accessors
					with(tile_id)
					{
						//Check if the ground is grass
						if state == ground_state.harvestable
						{
							if !audio_is_playing(snd_collect) audio_play_sound(snd_collect,1,false);
							global.money += current_plant.class.value;
							watered = false;
							final_qual = current_plant.final_qual;
							color = current_plant.color;
							var pay = "\n+"+string(current_plant.class.value);
							with(instance_create_layer(x,y,"Controllers",o_notifications))
							{
								text[0] = tile_id.final_qual;
								text[1] = pay;
								color = tile_id.color;
								
							}
							//Reset Ground
							instance_destroy(current_plant);
							current_plant = noone;
							sprite_index = s_grass;
							image_index = irandom(2);
							state = ground_state.grass;
							
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
}