//Seeds
chickpeas    = {
	count: 0,
	name: "Chickpea",
	spr: s_seed_chickpea
}
tomatillos   = {
	count: 0,
	name: "Tomatillo",
	spr: s_seed_tomatillo
}
gooseberries = {
	count: 0,
	name: "Gooseberry",
	spr: s_seed_gooseberry
}

//UI dimensions
width  = display_get_gui_width()/20;
height = display_get_gui_height()/11.25;
//column 19, Row 7
startX = width*19;
startY = height*7;
cellsize = 64;
//Array that holds the structs
inv = [chickpeas,tomatillos,gooseberries];

seed_selected = false;
current_seed = noone;