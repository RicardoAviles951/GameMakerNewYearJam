enum toolstate {
	inactive,
	hover
}
#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)
width = display_get_gui_width()/20;
height = display_get_gui_height()/11.25;
startX = width*8;
startY = height*10;
cellsize = 64;
cell_count = 4;
length = 0;
toolArray[0,0] = 0;

toolArray[0,1] = "Trowel";
toolArray[1,1] = "Water";
toolArray[2,1] = "Hoe";
toolArray[3,1] = "Love";

color = c_white;

selected = false;

for (var i = 0; i < cell_count; i++)
{
		//First column
		toolArray[i,0] = toolstate.inactive;
		//Second column
		//toolArray[k,1] = "TOOLS";
		
	
}
//show_debug_message(toolArray);


