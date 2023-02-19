GetInput();
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);
scale = 2

//Checks if mouse is located here and applies state
if col == 0 and row == (2)
{
	if sidemenu == false scale = 2.25;
	
	//On Click
	if left_click
	{
		if !audio_is_playing(snd_select3) audio_play_sound(snd_select3,1,false);
		sidemenu = !sidemenu;
	}
				
}
else
{
	//If not hovering then set it back to normal
	color = c_white;
	sidearray[0,1] = cell_state.inactive;	
}

if col > 12 sidemenu = false;

//Check if Drop down is open
if sidemenu
{
	hover = false;
	//Loop through rows
	for(var i = 0; i < 3; i++)
	{
		var pack = pack_array[i];
		pack.scale = 2;
		pack.rot = 0;
		//Checks if in first two columns 
		if col == 0 or col == 1
		{
			//Checks if in the correct rows
			if row = i+3
			{
				//On hover logic
				hovername = pack.name;
				hover = true;
				pack.scale = 2.2;
				pack.rot = pack.rot + cos(jiggle*.08)*.8;
				jiggle++;
				
				//Action when doing a click
				if left_click
				{
					
					if pack.price <= global.money StopPlaySound(snd_purchase) else StopPlaySound(snd_error);
					//stores pack struct for quicker typing
					
					//Switch on the names
						switch(pack.name)
						{
							case "Chickpeas":
							//Checks if the price is within budget. If so it removes from currency and adds to inventory count
								if pack.price <= global.money{
									global.money -= pack.price;
									o_inventory.chickpeas.count += 1;
								}
							break;
							
							case "Tomatillos":
								if pack.price <= global.money
								{
									global.money -= pack.price;
									o_inventory.tomatillos.count += 1;
								}
							break;
							
							case "Gooseberries":
								if pack.price <= global.money
								{
									global.money -= pack.price;
									o_inventory.gooseberries.count += 1;
								}
							break;
						}
					show_debug_message(pack_array[i].name);
					//Check money, if enough, minus from total and add seed to inventory.
					
					
				}
				
				//Add logic for holding click here
			}
			
		}
	}//end of For Loop
	
	
	//Upgrading Tools
	if instance_exists(o_tools)
	{
		if (col == 0 || col == 1) && (row == 6 || row == 7)
		{
			//sets current tool to one selected
			current_tool = o_tools.id;
			if current_tool.class.name != "Love" and current_tool.class.name != "Bucket"{
			//Stores tool level
			tool_level = current_tool.class.level;
			//Calculates cost
			upgrade_cost = tool_level*250;
			//Sets it ready to upgrade
			upgrade_ready = true;
			}
			
			
			//Execute upgrade if clicked and money is sufficient
			if left_click and global.money >= upgrade_cost
			{
				
				switch(current_tool.class.name)
						{
							case "Trowel":
								ConfirmUpgrade();
								current_tool.class.level +=1;
								o_toolbelt.trowel_level = current_tool.class.level;
							
							break;
					
							case "Hoe":
								ConfirmUpgrade();
								current_tool.class.level +=1;
								o_toolbelt.hoe_level = current_tool.class.level;
							break;
					
							case "Water":
								ConfirmUpgrade();
								current_tool.class.level +=1;
								o_toolbelt.water_level = current_tool.class.level;
							break;
					
						}
			}
		}
	}
}//End of if sidemenu