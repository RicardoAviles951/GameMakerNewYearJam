t_source = time_source_create(time_source_global,.25,time_source_units_seconds,global.timer,[],-1,);
time_source_start(t_source);


//Time of day visual FX
//Decrease red starting from 8am to 4pm
//Decrease blue starting 4pm - 12am
//Increase to normal levels 12am to 6am
min_red = 150/255;
min_green = 100/255;
min_blue = 100/255;
//Individual vectors
red   = 1;
green = 1;
blue  = 1;
alpha = 1;

diff = function(min_color,time){
	var dif = (1 - min_color)/(time*60);
	return dif
}


_fx_tint = fx_create("_filter_tintfilter");
fx_set_parameter(_fx_tint, "g_TintCol", [clamp(red,0,1), clamp(green,0,1), clamp(blue,0,1), alpha]);
layer_set_fx("DayNight", _fx_tint);

timer = 0;

alpha = 0;
active = false;
alarm[0] = 60;
