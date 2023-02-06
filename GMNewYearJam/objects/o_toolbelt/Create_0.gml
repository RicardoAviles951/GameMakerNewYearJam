enum toolstate {
	inactive,
	hover
}
#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)
width = display_get_gui_width()/20;
height = display_get_gui_height()/11.25;
startX = width*7;
startY = height*10;
cellsize = 64;
cell_count = 5;
length = 0;
toolArray[0,0] = 0;

toolArray[0,1] = "Trowel";
toolArray[1,1] = "Water";
toolArray[2,1] = "Hoe";
toolArray[3,1] = "Love";
toolArray[4,1] = "Bucket";

toolsprites[0] = s_UI_trowel;
toolsprites[1] = s_UI_wateringcan;
toolsprites[2] = s_UI_gardenhoe;
toolsprites[3] = s_UI_love;
toolsprites[4] = s_UI_bucket;

color = c_white;
alpha = 0.75;
selected = false;

for (var i = 0; i < cell_count; i++)
{
		//First column
		toolArray[i,0] = toolstate.inactive;
}

//Tool levels
trowel_level = 1;
hoe_level = 1;
water_level = 1;

