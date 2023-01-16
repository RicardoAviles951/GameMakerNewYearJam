switch(state){
	case ground_state.plant:
		sprite_index = current_plant.class.sprite;
		image_index = current_plant.class.index;
	break;
	
}
if state == ground_state.transition{
		draw_y = draw_y + sin(timer*.2)*.5;
		timer++;
}