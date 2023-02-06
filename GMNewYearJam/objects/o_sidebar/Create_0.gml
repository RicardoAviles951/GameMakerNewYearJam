///@description Side bar UI for seed and shop selections
enum cell_state {
	inactive,
	hover,
	void
}
state = cell_state.inactive;
width = display_get_gui_width()/20;
height = display_get_gui_height()/11.25;
startX = 0;
startY = height*2;
cellsize = 64;
cell_count = 1;
length = 0;

sidearray[0,0] = "Shop"; 
sidearray[0,1] = cell_state.inactive;
color = c_white;

Chickpack = {
	Psprite: s_pack_chickpeas,
	name: "Chickpeas",
	price: 10,
	seedsprite: s_seed_chickpea
}

Tomatillopack = {
	Psprite: s_pack_tomatillos,
	name: "Tomatillos",
	price: 20,
	seedsprite: s_seed_tomatillo
}

Goosepack = {
	Psprite: s_pack_gooseberries,
	name: "Gooseberries",
	price: 30,
	seedsprite: s_seed_gooseberry
}
	
pack_array[0] = Chickpack;
pack_array[1] = Tomatillopack;
pack_array[2] = Goosepack;
selected = false;

upgrade_ready = false;
current_tool = noone;
tool_level = 1;
upgrade_cost = 0;

//Enum for sidebar elements 
enum popout{
	none,
	seed,
	shop
}
//draw popout menu or seeds or shop
sidemenu = false;
//If something from the popout has been selected
side_selected = false;
