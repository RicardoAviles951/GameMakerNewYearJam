enum mama{
	tutorial,
	idle,
	walk
}

if global.tutorial{
	state = mama.tutorial;
}
else{
	state = mama.idle;
}


tut = 0;
box = noone;