 
var guiW =display_get_gui_width();
var guiH = display_get_gui_height();
var c = make_color_rgb(255, 214, 83);
var b = make_color_rgb(102,57,49);
draw_set_font(f_titlescreen);
draw_set_halign(fa_left);
draw_text_transformed_color((guiW*2/3)-54,guiH/16+32+y_adj,"Mama's\nSunnyside\nGarden",1,1,0,b,b,b,b,alpha);
draw_text_transformed_color((guiW*2/3)-48,guiH/16+32+y_adj,"Mama's\nSunnyside\nGarden",1,1,0,c,c,c,c,alpha);

//rgb(255, 253, 172);