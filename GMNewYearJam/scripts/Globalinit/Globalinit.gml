//global.time = 0;
global.fullday = 1440;
global.minutes = 0;
global.day = 0;
global.time_rate = 1;
global.partofday = "";


global.timer = function()
{
	global.minutes+=global.time_rate;	
}

global.time_pause = false;