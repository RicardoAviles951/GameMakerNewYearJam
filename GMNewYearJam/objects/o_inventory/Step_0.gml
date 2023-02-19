GetInput();
if active {
	if alpha < 1 alpha +=.02;
}
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);
hover = false;
//Make sure in the right column
if col == 19 {
	for(var i = 0; i < 3;i++)
	{
		//Loops through different rows
		if row == i+7
		{
			
			//hover logic
			hover = true;
			hovername = inv[i].name;
			
			if left_click
			{
				
				var seed = inv[i];
				if seed_selected == false and seed.count > 0
				{
				audio_play_sound(snd_select2,1,false);
				//Tutorial Logic 
				if global.tutorial
					{
						with(o_mama)
						{
							if tut == 3
							{
								o_textbox.char_current = 0;
								tut+=1;
							}
						}
					}
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
}

if seed_selected
{
	wobbleY = mouse_gui_y + cos(wobble*.08)*8-16;
	wobble++;
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
									//Tutorial Logic 
									if global.tutorial
									{
										with(o_mama)
										{
											if tut == 4
											{
												o_textbox.char_current = 0;
												tut+=1;
											}
										}
									}
									audio_play_sound(snd_placeseed,1,false);
									//Creates plant object
								var plant = instance_create_layer(mouse_x,mouse_y,"Instances",o_plant);
								//Defines class 
								with(plant)
								{
									class = new PlantClass(o_inventory.current_seed.name,0,0,0,s_dirt_mound,0,random_range(0.1,0.4),0,1,10,0);
									visible = false;
									state = plant_state.planted;
								}
								global.seedsinplay +=1;
								global.plant_count +=1;
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
		audio_play_sound(snd_deselect,2,false);
		seed_selected = false;
		current_seed = noone;
	}
}


//Check for unwinnable condition
totalseeds = chickpeas.count + tomatillos.count + gooseberries.count;

if totalseeds == 0 and global.money < 10 and global.seedsinplay == 0 {
	global.money += 10;
}

show_debug_message("Planted seeds = "+ string(global.seedsinplay));