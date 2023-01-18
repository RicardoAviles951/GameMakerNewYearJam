GetInput();

//Get length of array
var len = array_length(sidearray);
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);

//Checks if hovering over Seeds or Shop option
for (var i = 0; i < len;i++)
{
		//Checks if mouse is located here and applies state
		if col == 0 and row == (i+2)
		{
			//Sets that specific cell to hover state
			sidearray[@ i,0] = cell_state.hover;
			
			
			//check which cell we are in
			if left_click
			{
				//Check if sidemenu is not already active
				if sidemenu == false
				{
					//check which cell we are on
					switch(sidearray[i,1])
					{
						case "Seeds":
							sidemenu = true;
							popout_state = popout.seed;
							show_debug_message("seed");
						
						break;
					
						case "Shop":
							sidemenu = true;
							popout_state = popout.shop;
							show_debug_message("Shop");
						break;
					}
				}
				else
				{
					sidemenu = false;
				}
				
			}// End of left click check
			
			
		}
		else
		{
			sidearray[@ i,0] = cell_state.inactive;
		}
}

//Checks if hovering over seed options
if sidemenu
{
		for(var i = 0; i < 2;i++)
			{
				for(var j = 0; j < 2;j++)
				{
					if col == (i+1) and row == (j+2)
					{
						//show_debug_message("col "+string(i+1)+" row "+string(j+2));
						seedarray[i,j].state = 1;
						//Logic for on click
						if left_click
						{
							if side_selected == false
							{
								with(o_mama){
								if tut == 3{
									o_textbox.char_current = 0;
									tut+=1;
								}
							}
								switch(seedarray[i,j].name)
								{
									case "Chickpea":
										current_seed = [seedarray[i,j].sprite,seedarray[i,j].name];
										seed_selected = true;
										sidemenu = false;
										side_selected = true;
									break;
								
									case "Tomatillo":
									show_debug_message("seed B created")
										current_seed = [seedarray[i,j].sprite,seedarray[i,j].name];
										seed_selected = true;
										sidemenu = false;
										side_selected = true;
									break;
								
									case "Gooseberry":
									show_debug_message("seed C created")
										current_seed = [seedarray[i,j].sprite,seedarray[i,j].name];
										seed_selected = true;
										sidemenu = false;
										side_selected = true;
									break;
								}
							}
							//create a plant object
							
						}
						
						
						
					}
					else{
						seedarray[i,j].state = 0;
					}
					
				}
			}
	if col > 4 or row > 5 sidemenu = false;		
		

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
								with(o_mama){
								if tut == 4{
									o_textbox.char_current = 0;
									tut+=1;
								}
							}
								//Creates plant object
								var plant = instance_create_layer(mouse_x-16,mouse_y-16,"Instances",o_plant);
								//Defines class 
								with(plant)
								{
									class = new PlantClass(o_sidebar.current_seed[1],0,0,0,o_sidebar.current_seed[0],0,random_range(0.1,0.4),0,1,10,0);
									visible = false;
									state = plant_state.planted;
								}
								//Puts object id in the current plant array for ground tile
								current_plant = plant.id;
								//Sets ground state to plant 
								state = ground_state.plant;
								
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
	else if right_click{//deselects the seed and resets sidebar/popout menu
		side_selected = false;
		seed_selected = false;
		current_seed = [];
	}
}
