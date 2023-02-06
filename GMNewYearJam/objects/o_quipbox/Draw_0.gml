draw_set_font(f_textbox);
var  c = c_black;

_len = string_length(text[text_current]);
	if (char_current < _len)
	    {
		//	if !audio_is_playing(snd_txt) audio_play_sound(snd_txt,1,false);
			//audio_sound_pitch(snd_txt,random_range(1.5,2));
	    char_current += char_speed;
	    }
	
	var _str = string_copy(text[text_current], 1, char_current);
draw_text_transformed_color(_x,_y,_str,.06,.06,0,c,c,c,c,1);


