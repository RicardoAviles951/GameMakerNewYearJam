x_norm = x;
type[0] = "";

next_room = function(tut,rm){
	audio_stop_all();
	global.tutorial = tut;
	room_goto(rm);
}

timer = time_source_create(time_source_global,1,time_source_units_seconds,next_room,[false,Room1]);