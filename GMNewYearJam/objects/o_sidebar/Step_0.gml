GetInput();

//Get length of array
var len = array_length(sidearray);
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);

//Loops through array and maps to rows and columns
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
								switch(seedarray[i,j].name)
								{
									case "SeedA":
										show_debug_message("seed A created")
										with(instance_create_layer(mouse_x-16,mouse_y-16,"Plants",o_plant)){
											class = new PlantClass("SeedA",0,1,0,s_seedA,0,0,0,0,10,0);
											sprite_index = class.sprite;
											state = plant_state.moving;
										}
										sidemenu = false;
										side_selected = true;
									break;
								
									case "SeedB":
									show_debug_message("seed B created")
										side_selected = true;
									break;
								
									case "SeedC":
									show_debug_message("seed C created")
										side_selected = true;
									break;
								
									case "SeedD":
									show_debug_message("seed D created")
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
