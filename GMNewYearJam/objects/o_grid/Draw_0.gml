
//show_debug_message(len);

for(var i = 0; i < grid_width; i++)
{
	
	for(var k = 0; k < grid_height; k++)
	{
		
		//if the grid is not marked as void then draw it
		if gridarray[i,k] != states.void
		{
			alpha = .1;
			c = c_white;
			var _x = i * cell_size;
			var _y = k * cell_size;
			if gridarray[i,k] == states.hover alpha = 1;
			if gridarray[i,k] == states.selected {
				c = c_red;
				alpha = 1;
			}
			draw_sprite_ext(s_grid,0,_x,_y,2,2,0,c,alpha);
			//draw_text(_x,_y,"CELL");
			//draw_rectangle_color(_x, _y, _x + cell_size, _y + cell_size,c,c,c,c, true);
		}
	}
}



