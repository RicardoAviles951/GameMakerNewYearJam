enum ground_state{
	grass,
	dirt,
	dirt_hole,
	plant,
	transition,
	harvestable
}
enum grass {
	top,
	down,
	left,
	right,
	topLC,
	TopRC,
	botLC,
	botRC,
	regular
}
sprite_index = s_grass_tiled_short;

image_index = grass.regular + irandom(3);

if place_meeting(x-1,y,o_wall){
	//Ground to left, use left
	image_index = grass.left;
}
else if place_meeting(x+1,y,o_wall){
	//ground to right, use right
	image_index = grass.right;
}
else if place_meeting(x,y-1,o_wall){
	//ground above, use top
	image_index = grass.top;
}
else if place_meeting(x,y+1,o_wall){
	//ground below, use bottom
	image_index = grass.down;
}

if place_meeting(x-1,y,o_wall) and place_meeting(x,y-1,o_wall){
	image_index = grass.topLC;
}
else if place_meeting(x+1,y,o_wall) and place_meeting(x,y-1,o_wall){
	image_index = grass.TopRC;
}
else if place_meeting(x-1,y,o_wall) and place_meeting(x,y+1,o_wall){
	image_index = grass.botLC;
}
else if place_meeting(x+1,y,o_wall) and place_meeting(x,y+1,o_wall){
	image_index = grass.botRC;
}
state = ground_state.grass;
//sprite_index = s_grass
//Randomly assigning ground state sprite
//image_index = irandom(3);
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
	//show_debug_message("Time Active");
}
t_source = 0;

//Draw Functions
tweenfired = false;
scale = 1;
tween_y = x;
draw_x = x;
draw_y = y;
timer = 0;
seednum = 0;