draw_sprite_ext(chickpeas.spr,0,startX,startY,2,2,0,c_white,alpha);
draw_sprite_ext(tomatillos.spr,0,startX,startY+cellsize,2,2,0,c_white,alpha);
draw_sprite_ext(gooseberries.spr,0,startX,startY+cellsize*2,2,2,0,c_white,alpha);
var c = make_color_rgb(204,219,255);
draw_text_color(startX+36,startY+36,chickpeas.count,c,c,c,c,alpha);
draw_text_color(startX+36,startY+cellsize+36,tomatillos.count,c,c,c,c,alpha);
draw_text_color(startX+36,startY+cellsize*2+36,gooseberries.count,c,c,c,c,alpha);


if hover 
{
	var hue_bg = make_color_rgb(158,173,207);
	var hue_txt = make_color_rgb(75,89,173);
	var len = string_width(hovername);
	draw_roundrect_color(mouse_gui_x-98,mouse_gui_y-48,mouse_gui_x-96+len,mouse_gui_y-24,hue_bg,hue_bg,false);
	draw_text_color(mouse_gui_x-96,mouse_gui_y-48,hovername,hue_txt,hue_txt,hue_txt,hue_txt,1);
}

if seed_selected
{
	draw_sprite_ext(current_seed.spr,0,mouse_gui_x-16,wobbleY,2,2,0,c_white,1);	
}