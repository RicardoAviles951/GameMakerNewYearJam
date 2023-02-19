sprite_index = choose(s_mama_idle,s_mama_celebrate);
if exitpath == false{
var t = time_source_create(time_source_game,time,time_source_units_seconds,wait,[paths.pth2]);
time_source_start(t);
}
else
{
	walking = false;
	exitpath = false;
	state = mama.idle;
}