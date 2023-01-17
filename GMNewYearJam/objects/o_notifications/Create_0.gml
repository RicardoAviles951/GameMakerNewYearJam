text[0] = "";
text[1] = "";
color = c_white;
var _y = irandom_range(72,128);
TweenEasyMove(x,y,x,y-_y, 0, 30,EaseInOutBack);
TweenEasyFade(0,1,0,30,EaseInCubic);
alarm[0] = 45;
