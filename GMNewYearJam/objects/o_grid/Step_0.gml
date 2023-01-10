col = floor(mouse_x / 32);
row = floor(mouse_y / 32);
//show_debug_message(len);
 //Change the color of the cell that the mouse is hovering over 
//show_debug_message("column " + string(col));
//show_debug_message("row " + string(row));

for (var i = 0; i < grid_width; i++)
{
    for (var j = 0; j < grid_height; j++)
    {
        //Perform Logic on non-void cells
		if gridarray[i,j] != states.void{
		
        if i == col and j == row{
			if gridarray[i,j] != states.selected // if not selected already
			{
				gridarray[i,j] = states.hover; //show hover
				if mouse_check_button_pressed(mb_left) gridarray[i,j] = states.selected; // if clicked mark as selected
				if mouse_check_button(mb_left) gridarray[i,j] = states.selected;
			}
			else{ // else if it is selected
				if mouse_check_button_pressed(mb_right) gridarray[i,j] = states.inactive;
				if mouse_check_button(mb_right) gridarray[i,j] = states.inactive;
			}
			
		}
		else{
			if gridarray[i,j] != states.selected
			{
				gridarray[i,j] = states.inactive;
			}
		}
	}
		
    }
}
