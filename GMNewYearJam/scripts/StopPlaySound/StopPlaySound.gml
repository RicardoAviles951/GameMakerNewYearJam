///@description The purpose of this function is to allow you to play a sound, usually on click, that will stop the sound if it is currently 
/// playing and play from the beginning. Good for spamming sounds. 
function StopPlaySound(sound){
	
	if audio_is_playing(sound)
	{
		audio_stop_sound(sound);
		audio_play_sound(sound,1,false);
	}
	else
	{
		audio_play_sound(sound,1,false);
	}
}