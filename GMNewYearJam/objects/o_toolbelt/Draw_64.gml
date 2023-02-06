//Get length of array
var len = array_length(toolArray);
//Calculate length of toolbar
length = ((startX)+(cellsize*len)) - (startX);
//Draw toolbar sprite at specified location and size
//draw_sprite_stretched(s_toolbar,0,startX,startY,length,cellsize);
//draw_sprite_stretched_ext(s_UI_container,0,startX-8,startY-8,cell_count*cellsize+16,76,color,1);
for (var i = 0; i < len; i++)
{
	for (var k = 0; k < len; k++)
	{
		//Draw grid
		alpha = 0.60;
		//Checks if hovered 
		if toolArray[@ i,0] == toolstate.hover alpha = 1;;
		//Draws Tool UI sprites
		draw_sprite_ext(toolsprites[i],0,startX+i*cellsize,startY,2,2,0,c_white,1);
		//Draws Grid
		draw_sprite_ext(s_grid,0,startX+i*cellsize,startY,4,4,0,color,alpha);
		
		//draw_text(startX+8+k*cellsize,startY+8,toolArray[@ k,1]);
	}
}
	

//DEBUG
//draw_text(mouse_gui_x,mouse_gui_y, "X = " + string(mouse_gui_x) + "  Y = " + string(mouse_gui_y));
//draw_text(mouse_gui_x,mouse_gui_y, "col " + string(col) + "  row " + string(row));