switch(state){
	case ground_state.plant:
		sprite_index = current_plant.class.sprite;
		image_index = current_plant.class.index;
		if current_plant.class.Wtr_lvl < .50 watered = false;
		
		if current_plant.class.Wtr_lvl < .30
		{
			thirsty = true; 
			draw_y = draw_y + sin(timer*.2)*.5;
			timer++;
			
		}
		else 
		{
			thirsty = false;
		}
		
		if current_plant.state == plant_state.finished state = ground_state.harvestable;
	break;
	
	case ground_state.harvestable:

	
	break;
	
}
if state == ground_state.transition{
		draw_y = draw_y + sin(timer*.2)*.5;
		timer++;
}
