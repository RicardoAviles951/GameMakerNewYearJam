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

global.time_pause = false;
global.tutorial = true;
global.money = 0;
global.plant_count = 0;
randomize();