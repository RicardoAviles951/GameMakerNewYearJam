//List of mama states
enum mama{
	tutorial,
	idle,
	walk
}

enum paths {
	pth1,
	pth2,
	pth3,
	pth4
}

pathstate = paths.pth1;
currentpath = noone;
exitpath = false
next = noone;
time = 0;
wait = function()
	{
		walking = false;
		pathstate = next;
	}

//Sets state depnding on tutorial state.
if global.tutorial{
	state = mama.tutorial;
}
else{
	state = mama.walk;
}

//Gets dimensions of Sprite
spr_width = sprite_get_width(sprite_index);
spr_height = sprite_get_height(sprite_index);

//Tracks if Mama is quipping or not
quip = true;
//Method that toggles quip
ToggleQuip = function(){
	quip = !quip;
	show_debug_message("TOGGLE QUIP");
}

timer = time_source_create(time_source_global,15,time_source_units_seconds,ToggleQuip);

//Tracks steps in tutorial
tut = 0;

walking = false;

