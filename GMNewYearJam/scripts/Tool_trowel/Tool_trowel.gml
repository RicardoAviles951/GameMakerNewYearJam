function Tool_trowel(){
	//First we check if we in the moving state
	switch(state)
	{
		case process.moving:
		
			//In this state the tool should be centerd on the mouse
			x = mouse_x - 16;
			y = mouse_y - 16
			//If you click on a tile while having the trowel equipped 
			if left_click
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
						//Check if the ground is grass
						if state == ground_state.dirt
						{
							show_debug_message("dirt!");
							//Turn Grass into plain dirt and changes state
							sprite_index = s_dirt_plain;
							image_index = 1;
							state = ground_state.dirt_hole;
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