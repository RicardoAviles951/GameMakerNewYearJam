
startX = 128;
startY = 16;
TweenEasyMove(x,y,startX,startY,0,15,EaseOutCubic);
myText ="";



text[0] ="";
text_current = 0;
text_width = 600;
char_current = 1;
char_speed = .50;
text[text_current] = string_wrap(text[text_current], text_width);
_len = string_length(text[text_current]);
txt_finished = false;

draw_mouse = true;


//debug
x_adj = 0;
y_adj = 0;