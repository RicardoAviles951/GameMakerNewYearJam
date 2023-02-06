draw_sprite_ext(chickpeas.spr,0,startX,startY,2,2,0,c_white,1);
draw_sprite_ext(tomatillos.spr,0,startX,startY+cellsize,2,2,0,c_white,1);
draw_sprite_ext(gooseberries.spr,0,startX,startY+cellsize*2,2,2,0,c_white,1);


draw_text(startX+36,startY+36,chickpeas.count);
draw_text(startX+36,startY+cellsize+36,tomatillos.count);
draw_text(startX+36,startY+cellsize*2+36,gooseberries.count);


if seed_selected
{
	draw_sprite_ext(current_seed.spr,0,mouse_gui_x,mouse_gui_y,2,2,0,c_white,1);
	
}