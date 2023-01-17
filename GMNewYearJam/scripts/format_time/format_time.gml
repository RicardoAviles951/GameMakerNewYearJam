function format_time(hours,mins){	
	
	var hrs = string(round(hours));
	hrs = string_repeat("0", max(0, 2 - string_length(hrs))) + hrs;
	
	var mn = string(round(mins));
	mn = string_repeat("0",max(0, 2 - string_length(mn)))+ mn;
	draw_set_font(f_GUI);
	//Drawing Clock
	var guiW = display_get_gui_width();
	var x1 = guiW/40*37;
	var y1 = 16;
	var pad = 32;
	var width = 94;
	var height = 128;
	var c = c_black;
	//var guiH = display_get_height();
	draw_set_alpha(.5);
	draw_roundrect_color(x1-2,y1-2,x1+width,(y1-2)+height,c,c,false);
	draw_set_alpha(1);
	draw_text(x1,y1,hrs + ":" + mn + " " + global.partofday);
	draw_text(x1,y1+pad,"Day "+ string(global.day));
	
	
//Draw Currency
draw_sprite_ext(s_coin,0,x1,y1+94,2,2,0,c_white,1);
draw_text(x1+32,y1+102,"x"+string(global.money));
}