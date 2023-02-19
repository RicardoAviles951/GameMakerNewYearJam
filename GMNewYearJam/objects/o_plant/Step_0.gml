GetInput();
switch(state)
{
	case plant_state.planted:
		switch(class.name)
		{
			#region Chickpea
			case "Chickpea":
				base_mod = 1;
				//nested switch on stage
				switch(class.stage)
				{
					case 0: //Mound stage 
					//show_debug_message("CHICKPEA");
					
						//Set a sprite to set the ground to
						class.sprite = s_dirt_mound;
						GrowthStages(.1);
							
					break;
			
					case 1:
						//Set a sprite to set the ground to
						//show_debug_message("CHICKPEA2");
						class.sprite = s_chickpea_full;
						GrowthStages(.25);
					break;
			
					case 2:
						//Set a sprite to set the ground to
						//class.sprite = s_chickpea2;
						//As long as the growth is less than 1, then grow.
						GrowthStages(.25);
					break;
			
					case 3:
						audio_play_sound(snd_ready,1,false);
						class.neglect -= class.love;
						state = plant_state.finished;
					break;
				}
				if class.sprite != s_dirt_mound class.index = class.stage-1;
				
			break;
			#endregion 
			#region Tomatillo
			case "Tomatillo":
			base_mod = 2;
				//nested switch on stage
				switch(class.stage)
				{
					case 0: //Mound stage
						//Set a sprite to set the ground to
						class.sprite = s_dirt_mound;
						GrowthStages(.25);
						
					break;
			
					case 1:
						class.sprite = s_tomatillo_full;
						GrowthStages(.1);
					break;
			
					case 2:
						GrowthStages(.2);
					break;
			
					case 3:
						GrowthStages(.1);
					break;
			
					case 4:
						GrowthStages(.5);
					break;
			
					case 5:
						audio_play_sound(snd_ready,1,false);
						class.neglect -= class.love;
						state = plant_state.finished;
					break;
			
				}
				if class.sprite != s_dirt_mound class.index = class.stage-1;
			break;
			#endregion
			#region Gooseberry
			case "Gooseberry":
			base_mod = 3;
				//nested switch on stage
				switch(class.stage)
				{
					case 0:
						//Set a sprite to set the ground to
						class.sprite = s_dirt_mound;
						GrowthStages(.01);
						
					break;
			
					case 1:
						class.sprite = s_gooseberry_full;
						GrowthStages(.5);
						
					break;
			
					case 2:
						GrowthStages(.25);
					break;
			
					case 3:
						GrowthStages(.75);
					break;
			
					case 4:
						audio_play_sound(snd_ready,1,false);
						class.neglect -= class.love;
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
