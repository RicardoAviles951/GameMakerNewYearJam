var guiH = display_get_gui_height();
var guiW = display_get_gui_width();
if global.pause {
draw_sprite_stretched(s_grass_tiled_short,11,0,0,guiW,guiH);
draw_set_font(f_title);
draw_text_transformed(guiW/8,guiH/3,"Would you like to return to the main menu?\n\nIf yes, press ENTER.\n\nPress P or ESCAPE to return to the game.",.25,.25,0)
}