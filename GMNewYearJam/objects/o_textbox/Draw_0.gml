var pad = 16;
var c = c_black;
draw_sprite_ext(sprite_index, image_index,x,y,2,1,image_angle,image_blend,image_alpha);
draw_sprite_ext(s_portrait_mama,0,x+pad,y+pad,.5,.5,0,c_white,1);

 _len = string_length(text[text_current]);
	if (char_current < _len)
	    {
		//	if !audio_is_playing(snd_txt) audio_play_sound(snd_txt,1,false);
			//audio_sound_pitch(snd_txt,random_range(1.5,2));
	    char_current += char_speed;
	    }
	
	var _str = string_copy(text[text_current], 1, char_current);
	//draw_text_ext(guiW/3, guiH*5/8+16,_str,38,width - (guiW*5/24)-8);
	draw_text_transformed_color(x+88, y+16,_str,.5,.5,0,c,c,c,c,1);
	
	if draw_mouse 
	{
		draw_sprite_ext(s_left_click,1,x+184*2,y+82,1,1,0,c_white,1);
	}