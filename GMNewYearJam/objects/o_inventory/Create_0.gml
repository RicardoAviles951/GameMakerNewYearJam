//Seeds
chickpeas    = {
	count: 10,
	name: "Chickpea",
	spr: s_seed_chickpea
}
tomatillos   = {
	count: 5,
	name: "Tomatillo",
	spr: s_seed_tomatillo
}
gooseberries = {
	count: 5,
	name: "Gooseberry",
	spr: s_seed_gooseberry
}

totalseeds = chickpeas.count + tomatillos.count + gooseberries.count;
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

wobbleY = mouse_gui_y;
wobble = 0;

hover = false;
hovername = "";
alpha = 0;
active = false;
alarm[0] = 60;