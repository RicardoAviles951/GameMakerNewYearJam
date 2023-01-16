
//Get length of array
var len = array_length(sidearray);
//Calculate length of toolbar
length = ((startY)+(cellsize*len)) - (startY);
//Draw toolbar sprite at specified location and size
draw_sprite_stretched(s_toolbar,0,startX,startY,cellsize,length);

for (var i = 0; i < len; i++)
{
		//Draw grid
		color = c_white;
		//Checks if hovered 
		if sidearray[@ i,0] == cell_state.hover color = c_blue;
		//Draws grid sprites
		draw_sprite_ext(s_grid,0,startX,startY+i*cellsize,4,4,0,color,1);
		draw_text(startX+8,startY+8+i*cellsize,sidearray[@ i,1]);
}
	
	
//Pop out menu logic
//Var that hold if popout should be drawn
if sidemenu
{
	//Draw sidemenu background 
	draw_set_alpha(.5);
	draw_set_color(c_black);
	draw_roundrect(width,height*2,width+cellsize*2,height*2+cellsize*2,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	switch(popout_state)
	{
		case popout.seed:
			for(var i = 0; i < 2;i++)
			{
				for(var j = 0; j < 2;j++)
				{
					draw_sprite_ext(seedarray[i,j].sprite,0,width+(i*cellsize),height+((j+1)*cellsize),2,2,0,c_white,1);
					if seedarray[@ i,j].state == 1 {
						var seedname = seedarray[i,j].name;
						var len = string_width(seedname);
						if len > 0 draw_rectangle_color(mouse_gui_x-len/2,mouse_gui_y-32,mouse_gui_x+len/2,mouse_gui_y,c_black,c_black,c_black,c_black,false);
						draw_text(mouse_gui_x-len/2,mouse_gui_y-28,seedname);
					}
				}
			}
			
		break;
		
		
		case popout.shop:
		
		break;
	}
	
	
}

if seed_selected{
	draw_sprite_ext(current_seed[0],0,mouse_gui_x,mouse_gui_y,1,1,0,c_white,1);
}