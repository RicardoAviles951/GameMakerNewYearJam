gpu_set_texfilter(false);
global.fullday = 1440;
global.minutes = 480;
global.day = 0;
global.time_rate = 1;
global.partofday = "";


global.timer = function()
{
	global.minutes+=global.time_rate;	
}

global.pause = false;
global.tutorial = true;
global.money = 50;
global.plant_count = 0;
global.seedsinplay = 0;
window_set_cursor(cr_none);
randomize();