if global.minutes > (global.fullday/3) and global.minutes < (global.fullday*2/3){
	if sprite_index != s_UI_day
	{
		
		TweenScript(id,true,.5,Change_sprite,s_UI_day);
		if moving == false{
		TweenEasyScale(1,1,0,0,0,30,EaseInCubic,TWEEN_MODE_BOUNCE);
		moving = true;
		}
		
		
	}
	
	//show_debug_message("daytime")
}
else if global.minutes < global.fullday/3 or global.minutes > (global.fullday*2/3)
{
	if sprite_index != s_UI_night
	{ 
		TweenScript(id,true,.5,Change_sprite,s_UI_night);
		if moving == false{
		TweenEasyScale(1,1,0,0,0,30,EaseInCubic,TWEEN_MODE_BOUNCE);
		moving = true;
		}
		
	}
}

switch(state){
	case sun_moon.sun:
		
	break;
	
	case sun_moon.moon:
	
	break;
	
	case sun_moon.replace:
	
	break;
	
}