if o_menu.menu_state == menu_states.active
{
	audio_play_sound(snd_hover,1,false);
	TweenEasyMove(x,y,x_norm+32,y,0,10,EaseInOutBounce);
}