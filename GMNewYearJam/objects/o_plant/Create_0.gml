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
	normal,
	great,
	Excellent
}

final_qual = "";
color = c_white;
//Debug
//Shows all stat info