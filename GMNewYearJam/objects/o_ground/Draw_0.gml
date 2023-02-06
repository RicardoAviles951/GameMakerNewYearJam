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
	if tweenfired == false{
		TweenFire(id,EaseOutBounce,0,true,0,.5,"scale",0,1);
		TweenFire(id,EaseInOutElastic,TWEEN_MODE_PATROL,true,0,.5,"tween_y",y-2,y+2);
		tweenfired = true;
	}
	draw_sprite_ext(current_tool_sprite,0,x,tween_y,scale,scale,0,c_white,1);
	//draw_text(x+8,y+8,"WORKING");
}
else{
	tween_y = y;
	scale   = 0;
	tweenfired = false;
}
if thirsty {
	draw_sprite_ext(s_waterdrop,0,x+8,draw_y,.5,.5,0,c_white,1);
}