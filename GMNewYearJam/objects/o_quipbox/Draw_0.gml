draw_set_font(f_textbox);
var  c = c_black;

_len = string_length(text[text_current]);
	if (char_current < _len)
	    {
		 char_current += char_speed;
	    }
	
var _str = string_copy(text[text_current], 1, char_current);
draw_set_halign(fa_left);
draw_text_transformed_color(_x,_y,_str,.06,.06,0,c,c,c,c,1);