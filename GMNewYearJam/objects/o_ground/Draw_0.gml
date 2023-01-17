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

if state == ground_state.transition{
	draw_sprite(current_tool_sprite,0,x,draw_y);
	//draw_text(x+8,y+8,"WORKING");
}
if thirsty {
	draw_sprite_ext(s_waterdrop,0,x+8,draw_y,.5,.5,0,c_white,1);
}