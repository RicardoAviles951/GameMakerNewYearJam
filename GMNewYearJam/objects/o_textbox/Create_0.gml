
startX = 128;
startY = 16;
TweenEasyMove(x,y,startX,startY,0,15,EaseOutCubic);
myText ="TEST string testing and more testing anad more testing and more testing and more testing test testtest hello hello hello more and more and more and more and more.";
var cam = view_camera[0];
var camx = camera_get_view_x(cam);
var camy = camera_get_view_y(cam);



text[0] ="";
text_current = 0;
text_width = 480;
char_current = 1;
char_speed = .50;
text[text_current] = string_wrap(text[text_current], text_width);
_len = string_length(text[text_current]);
txt_finished = false;

draw_mouse = false;
text_seq = layer_sequence_create("Tools",camx,camy,sq_textbox);
//debug
x_adj = 0;
y_adj = 0;