GetInput();
switch(state)
{
	case plant_state.planted:
		switch(class.name)
		{
			#region Chickpea
			case "Chickpea":
			
				//nested switch on stage
				switch(class.stage)
				{
					case 0: //Mound stage 
					show_debug_message("CHICKPEA");
						//Set a sprite to set the ground to
						class.sprite = s_dirt_mound;
						GrowthStages(.001);
							
					break;
			
					case 1:
						//Set a sprite to set the ground to
						class.sprite = s_chickpea_full;
						GrowthStages(.001);
					break;
			
					case 2:
						//Set a sprite to set the ground to
						//class.sprite = s_chickpea2;
						//As long as the growth is less than 1, then grow.
						GrowthStages(.001);
					break;
			
					case 3:
						
						state = plant_state.finished;
					break;
				}
				if class.sprite != s_dirt_mound class.index = class.stage-1;
				
			break;
			#endregion 
			#region Tomatillo
			case "Tomatillo":
				//nested switch on stage
				switch(class.stage)
				{
					case 0: //Mound stage
						//Set a sprite to set the ground to
						class.sprite = s_dirt_mound;
						GrowthStages(.05);
						
					break;
			
					case 1:
						class.sprite = s_tomatillo_full;
						GrowthStages(.01);
					break;
			
					case 2:
						GrowthStages(.01);
					break;
			
					case 3:
						GrowthStages(.01);
					break;
			
					case 4:
						GrowthStages(.012);
					break;
			
					case 5:
						state = plant_state.finished;
					break;
			
				}
				if class.sprite != s_dirt_mound class.index = class.stage-1;
			break;
			#endregion
			#region Gooseberry
			case "Gooseberry":
				//nested switch on stage
				switch(class.stage)
				{
					case 0:
						//Set a sprite to set the ground to
						class.sprite = s_dirt_mound;
						GrowthStages(1);
						
					break;
			
					case 1:
						class.sprite = s_gooseberry_full;
						GrowthStages(1.5);
						
					break;
			
					case 2:
						GrowthStages(.25);
					break;
			
					case 3:
						GrowthStages(1.5);
					break;
			
					case 4:
						state = plant_state.finished;
					break;
				}
				if class.sprite != s_dirt_mound class.index = class.stage-1;
			break;
			#endregion
		}//End of switch on name
	break;
	
	case plant_state.finished:
		//Toggle some var to do a particle effect 
		DetermineQual();
	break;
}
