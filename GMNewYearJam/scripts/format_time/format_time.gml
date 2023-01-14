function format_time(hours,mins){	
	
	var hrs = string(round(hours));
	hrs = string_repeat("0", max(0, 2 - string_length(hrs))) + hrs;
	
	var mn = string(round(mins));
	mn = string_repeat("0",max(0, 2 - string_length(mn)))+ mn;
	
	//Drawing Clock
	var guiW = display_get_gui_width();
	var x1 = guiW/40*37;
	var y1 = 32;
	var pad = 16;
	var width = 72;
	var height = 32;
	var c = c_black;
	//var guiH = display_get_height();
	draw_set_alpha(.5);
	draw_roundrect_color(x1,y1,x1+width,y1+height,c,c,false);
	draw_set_alpha(1);
	draw_text(x1,y1,hrs + ":" + mn + " " + global.partofday);
	draw_text(x1,y1+pad,"Day "+ string(global.day));
}