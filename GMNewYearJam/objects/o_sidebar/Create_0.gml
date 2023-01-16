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
//draw popout menu or seeds or shop
sidemenu = false;
//If something from the popout has been selected
side_selected = false;
//If you have selected seed or shop will change this state
popout_state = popout.none;


//seedcount = 4;

var hcells = 2;
var vcells  = 2;

for (var s = 0; s < hcells; s++){
	for (var i = 0; i < vcells; i++){
	seedarray[s,i] = new Seed("TestSeed",s_seed_chickpea,0);
	show_debug_message("("+string(s)+","+string(i)+")");
	}
}

//ChickPea
seedarray[0,0].name = "Chickpea";
seedarray[0,0].sprite = s_seed_chickpea;
//Tomatillo
seedarray[0,1].name = "Tomatillo";
seedarray[0,1].sprite = s_seed_tomatillo;
//Gooseberry
seedarray[1,0].name = "Gooseberry";
seedarray[1,0].sprite = s_seed_gooseberry;

//Gooseberry
seedarray[1,1].name = "";
seedarray[1,1].sprite = s_pixel;

current_seed = [s_pack_chickpeas,s_pack_tomatillos,s_pack_gooseberries];
seed_selected = false;
show_debug_message(seedarray);