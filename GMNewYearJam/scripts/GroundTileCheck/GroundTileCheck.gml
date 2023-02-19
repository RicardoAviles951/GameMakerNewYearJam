function GroundTileCheck()
{
	if place_meeting(x-1,y,o_wall){
		//Ground to left, use left
		image_index = grass.left;
	}
	else if place_meeting(x+1,y,o_wall){
		//ground to right, use right
		image_index = grass.right;
	}
	else if place_meeting(x,y-1,o_wall){
		//ground above, use top
		image_index = grass.top;
	}
	else if place_meeting(x,y+1,o_wall){
		//ground below, use bottom
		image_index = grass.down;
	}

	if place_meeting(x-1,y,o_wall) and place_meeting(x,y-1,o_wall){
		image_index = grass.topLC;
	}
	else if place_meeting(x+1,y,o_wall) and place_meeting(x,y-1,o_wall){
		image_index = grass.TopRC;
	}
	else if place_meeting(x-1,y,o_wall) and place_meeting(x,y+1,o_wall){
		image_index = grass.botLC;
	}
	else if place_meeting(x+1,y,o_wall) and place_meeting(x,y+1,o_wall){
		image_index = grass.botRC;
	}
}