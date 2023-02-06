class = noone;

enum plant_state{
	idle,
	moving,
	planted,
	finished
}
state = plant_state.idle;
current_col = noone;
current_row = noone;

enum qualities{
	nothing,
	normal,
	great,
	Excellent
}

final_qual = "";
color = c_white;
base_mod = 1;
//Debug
//Shows all stat info