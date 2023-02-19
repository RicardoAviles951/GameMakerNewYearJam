function Tool_love(){
	switch(state)
	{
		case process.moving:
			
			//In this state the tool should be centerd on the mouse
			x = lerp(x,mouse_x-16,.4);
			y = lerp(y,mouse_y-16,.4);
			//If you click on a tile while having the trowel equipped 
			if left_click
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
							//Stats that get augmented 
							current_plant.class.love +=.001;
							current_plant.class.growthrate += .001;
							current_plant.class.Wtr_retention += .001;
							
							//Function that switches the surface that particles are drawn
							//Love particles should be drawn on the regular draw surface
							if o_fx.gui_draw{
								o_fx.reg_draw = true;
								o_fx.gui_draw = false;
							}
							else{
								o_fx.reg_draw = true;
							}
							part_particles_create(o_fx.part_sys,x,y,o_fx.part_love,4);
							//Plays love sound 
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