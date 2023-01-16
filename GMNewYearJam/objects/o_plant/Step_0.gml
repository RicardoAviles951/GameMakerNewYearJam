GetInput();
//Stats 
switch(class.name)
{
	case "Chickpea":
		
		//nested switch on stage
		switch(class.stage)
		{
			case 0:
			show_debug_message("CHICKPEA");
				//Set a sprite to set the ground to
				class.sprite = s_dirt_mound;
				
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 1:
				//Set a sprite to set the ground to
				class.sprite = s_chickpea_full;
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 2:
				//Set a sprite to set the ground to
				//class.sprite = s_chickpea2;
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 3:
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					//class.growth = 0;
					//class.stage +=1;
				}
			break;
		}
		if class.sprite != s_dirt_mound class.index = class.stage-1;
	break;
	
	case "Tomatillo":
		//nested switch on stage
		switch(class.stage)
		{
			case 0: //Mound stage
				//Set a sprite to set the ground to
				class.sprite = s_dirt_mound;
				
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 1:
				class.sprite = s_tomatillo_full;
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 2:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 3:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 4:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 5:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					//class.growth = 0;
					//class.stage +=1;
				}
			break;
			
		}
		if class.sprite != s_dirt_mound class.index = class.stage-1;
	break;
	
	case "Gooseberry":
		//nested switch on stage
		switch(class.stage)
		{
			case 0:
				//Set a sprite to set the ground to
				class.sprite = s_dirt_mound;
				
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 1:
				class.sprite = s_gooseberry_full;
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 2:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 3:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					class.growth = 0;
					class.stage +=1;
				}
			break;
			
			case 4:
				//As long as the growth is less than 1, then grow.
				if class.growth < 1 
				{
					class.growth += (1/(global.fullday*.5));
				}
				else //Else reset growth vars
				{
					//class.growth = 0;
					//class.stage +=1;
				}
			break;
		}
		if class.sprite != s_dirt_mound class.index = class.stage-1;
	break;
}//End of switch on name

show_debug_message(class.name);
