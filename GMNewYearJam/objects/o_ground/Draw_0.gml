draw_self();
if watered{
	var w = sprite_get_width(sprite_index);
	var h = sprite_get_height(sprite_index);
	draw_set_color(c_black);
	draw_set_alpha(.1);
	draw_rectangle(x,y,x+w,y+h,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}