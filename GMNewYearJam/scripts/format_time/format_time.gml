function format_time(hours,mins){	
	
	var hrs = string(round(hours));
	hrs = string_repeat("0", max(0, 2 - string_length(hrs))) + hrs;
	var hue_txt = make_color_rgb(204,219,255);
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
	draw_text_color(x1-12,y1+96,hrs + ":" + mn + " " + global.partofday,hue_txt,hue_txt,hue_txt,hue_txt,alpha);
	draw_text_color(x1,y1+pad+96,"Day "+ string(global.day),hue_txt,hue_txt,hue_txt,hue_txt,alpha);
	
	
//Draw Currency
draw_sprite_ext(s_coin,0,x1-12,y1+height*1.5,2,2,0,c_white,alpha);
draw_text_color(x1+24,y1+height+72,"x"+string(global.money),hue_txt,hue_txt,hue_txt,hue_txt,alpha);
}