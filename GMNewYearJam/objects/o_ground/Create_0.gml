enum ground_state{
	grass,
	dirt,
	dirt_hole,
	plant,
	transition,
	harvestable
}

state = ground_state.grass;
sprite_index = s_grass
//Randomly assigning ground state sprite
image_index = irandom(3);
//Variables to hold which plant is growing 
current_plant = noone;
watered = false;
current_tool_sprite = noone;
thirsty = false;
final_qual = "";
color = c_white;
harvested = false;

//Working variables 
work_sprite = noone;
work_index = 0;
work_state = noone;
work_time = 0;

work = function(spr,ind,_state) {
	sprite_index = spr
	image_index = ind;
	state = _state;
	show_debug_message("Time Active");
}
t_source = 0;

//Draw Functions
draw_x = x;
draw_y = y;
timer = 0;
