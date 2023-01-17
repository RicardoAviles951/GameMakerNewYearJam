//Get mouse input
GetInput();
//Each Tool object will have different fucntions 
switch(class.name)
{	
	case "Trowel":
		Tool_trowel();
	break;
	
	case "Hoe":
		Tool_hoe();
	break;
	
	case "Water":
		Tool_water();
	break;
	
	case "Love":
		Tool_love();
	break;
	
	case "Bucket":
		Tool_bucket();
	break;
	
}










//switch(state){
//	case process.moving:
//		x = mouse_x-16;
//		y = mouse_y-16;
//		//show_debug_message(class.name);
//		if mouse_check_button_pressed(mb_left)
//		{
//			current_col = o_grid.col;
//			current_row = o_grid.row;
			
//			with(o_grid)
//			{
//				var tile_id = (GroundArray[other.current_col,other.current_row]);
//				if tile_id != 0
//				{
//					tile_id.sprite_index = s_dirt_plain;
//					o_toolbelt.selected = false;
					
					
//					//with(other){
//					//	state = process.placed;	
//					//}
					
//				}
//				else
//				{
//					show_debug_message("Cant place");
//				}
//				//x = o_grid.col*32;
//				//y = o_grid.row*32;
			
//			}
//		}
//	break;
	
//}




