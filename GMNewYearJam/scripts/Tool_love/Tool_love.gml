function Tool_love(){
	switch(state)
	{
		case process.moving:
			
			//In this state the tool should be centerd on the mouse
			x = lerp(x,mouse_x-16,.2);
			y = lerp(y,mouse_y-16,.2);
			//If you click on a tile while having the trowel equipped 
			if left_click
			{
			//Check if the tile is actually ground
				//First store the current column and row
				current_col = o_grid.col;
				current_row = o_grid.row;
				//show_debug_message(current_row);
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
							current_plant.class.love+=.001;
							current_plant.class.growthrate += .001;
							var fx = o_fx;
							part_particles_create(fx.part_sys,x,y,fx.part_love,4);
							audio_play_sound(snd_love,1,false);
						}
						
					}
				}
				else
				{
					//Play a wrong sound or show a message
					
				}
				//-------end of if tile_id
			}
		break;
	}
}