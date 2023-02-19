function Plant_Seed(){
	switch(state){
	case plant_state.idle:
	
	break;
	
	case plant_state.moving:
		//x = mouse_x - 16;
		//y = mouse_y - 16;
		
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
						if state == ground_state.dirt_hole
						{
							show_debug_message("Planted");
							//sprite_index = s_dirt_mound
							current_plant = other.id;
							o_sidebar.side_selected = false;
							other.state = plant_state.planted;
							global.seedsinplay +=1;
							global.plant_count +=1;
							state = ground_state.plant;
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
	
	case plant_state.planted:
		visible = false;
	break;
}
}