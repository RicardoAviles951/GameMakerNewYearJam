//If the total time reaches the full day cycle start it over and increment the day
if global.minutes >= global.fullday
{
	global.minutes = 0;
	global.day +=1;
}

//Logic to check if we are in AM or PM
if global.minutes > global.fullday/2 global.partofday = "PM"; else global.partofday = "AM";


fx_set_parameter(_fx_tint, "g_TintCol", [red, green, blue, alpha]);

if global.minutes > 0 and global.minutes < global.fullday/3{
	//between 00:00 and 06:00 am
	//return red and blue to 1
	
	if red < 1{
		red+=diff(min_red,240);
	}
	if blue < 1{
		blue +=diff(min_blue,240);
	}
	if green < 1{
		green+=diff(min_green,240);
	}
	//show_debug_message("Red "+ string(red));
	//show_debug_message("blue "+ string(blue));
	//show_debug_message("Green "+string(green));
	
}
else if global.minutes > global.fullday/3 and global.minutes < (global.fullday*2/3){
	//Between 08:00 AM and 04:00 PM
	//Decrease blue to minimum value
	
	if blue > min_blue
	{
		blue -=diff(min_blue,240);
	}
	//show_debug_message("Red "+ string(red));
	//show_debug_message("blue "+ string(blue));
	//show_debug_message("Green "+string(green));
}
else if global.minutes > (global.fullday*2/3) and global.minutes < global.fullday{
	//Between 4pm and 12am 
	//Decrease red to minimum value
	if red > min_red
	{
		red-=diff(min_red,240);
	}
	if green > min_green
	{
		green-=diff(min_green,240);
	}
	
	//show_debug_message("Red "+ string(red));
	//show_debug_message("blue "+ string(blue));
	//show_debug_message("Green "+string(green));
}

//show_debug_message("Money = "+string(global.money));