if state != mama.tutorial
{
	var pitch = random_range(.9,1.1);
	audio_play_sound(snd_goosehonk,1,false,1,0,pitch);
	TweenEasyScale(1,1,1.25,1.25,0,15,EaseInOutElastic,TWEEN_MODE_BOUNCE);
}
else
{
	tut +=1;
}