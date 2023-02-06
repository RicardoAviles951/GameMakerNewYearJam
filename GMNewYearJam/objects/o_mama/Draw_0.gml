//Draw shadow ellipse
draw_set_alpha(.25);
draw_ellipse_color(x,y+spr_height-6,x+spr_width,y+spr_height+6,c_black,c_black,false);
draw_set_alpha(1);
draw_self();