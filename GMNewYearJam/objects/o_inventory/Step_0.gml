GetInput();
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);

//Make sure in the right column
if col == 19 {
	for(var i = 0; i < 3;i++)
	{
		//Loops through different rows
		if row == i+7
		{
			if left_click
			{
				var seed = inv[i];
				if seed_selected == false and seed.count > 0
				{
					switch(seed.name)
					{
						case "Chickpea":
							current_seed = seed;
							seed_selected = true;
						break;
						
						case "Tomatillo":
							current_seed = seed;
							seed_selected = true;
						break;
						
						case "Gooseberry":
							current_seed = seed;
							seed_selected = true;
						break;
					}
				}
				show_debug_message(seed.name);
			}
		}
	}
}

if seed_selected
{
	var c_col = clamp(o_grid.col,0,17);
	var c_row = clamp(o_grid.row,0,10);
	
	var tile_id = o_grid.GroundArray[c_col,c_row];//store in local var for ease of writing
	if left_click or left_hold{
				//Check if the tile is NOT ground
				if tile_id != 0
				{
					//With statement to avoid confusing chained dot accessors
					with(tile_id)
					{
						//Check if the ground is dirt hole
						if state == ground_state.dirt_hole
						{
							//Checks if this specific ground tile doesn't have a plant already
							if current_plant == noone
							{
								
								if other.current_seed.count > 0
								{
									//Creates plant object
								var plant = instance_create_layer(mouse_x-16,mouse_y-16,"Instances",o_plant);
								//Defines class 
								with(plant)
								{
									class = new PlantClass(o_inventory.current_seed.name,0,0,0,s_dirt_mound,0,random_range(0.1,0.4),0,1,10,0);
									visible = false;
									state = plant_state.planted;
								}
								//Puts object id in the current plant array for ground tile
								current_plant = plant.id;
								//Sets ground state to plant 
								state = ground_state.plant;
								other.current_seed.count -= 1;
								}
								
								
								
							}
							
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
	else if right_click or current_seed.count <=0
	{//deselects the seed and resets sidebar/popout menu
		seed_selected = false;
		current_seed = noone;
	}
}
