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
cell_count = 2;
length = 0;

sidearray[0,0] = 0;
sidearray[0,1] = "Seeds";
sidearray[1,1] = "Shop";

color = c_white;

selected = false;

for (var i = 0; i < cell_count; i++)
{
		//Mark all cells 
		sidearray[i,0] = cell_state.inactive;
	
}


//Enum for sidebar elements 
enum popout{
	none,
	seed,
	shop
}
sidemenu = false;
side_selected = false;
popout_state = popout.none;


//seedcount = 4;

var hcells = 2;
var vcells  = 2;

for (var s = 0; s < hcells; s++){
	for (var i = 0; i < vcells; i++){
	seedarray[s,i] = new Seed("TestSeed",s_seedA,0);
	show_debug_message("("+string(s)+","+string(i)+")");
	}
}

//SeedA
seedarray[0,0].name = "SeedA";
seedarray[0,0].sprite = s_seedA;
//SeedB
seedarray[0,1].name = "SeedB";
seedarray[0,1].sprite = s_seedB;
//SeedC
seedarray[1,0].name = "SeedC";
seedarray[1,0].sprite = s_seedC;
//SeedC
seedarray[1,1].name = "SeedD";
seedarray[1,1].sprite = s_seedD;

show_debug_message(seedarray);