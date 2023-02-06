//Draw toolbar sprite at specified location and size
draw_sprite_stretched(s_toolbar,0,startX,startY,cellsize,cellsize);
draw_set_font(f_GUI);
//Draw grid
draw_sprite_ext(s_grid,0,startX,startY,4,4,0,color,1);

	
if sidemenu
{
	//Draw backdrop for shop
	draw_sprite_stretched(s_toolbar,0,startX,startY+cellsize,cellsize*2,cellsize*5);
	//Draw Seed Packets
	for (var i = 0; i < 3; i++)
	{
		//Draw packs
		draw_sprite_ext(pack_array[i].Psprite,0,startX,startY*2+(i*cellsize),2,2,0,c_white,1);
		//Draw names (LIKELY TO CHANGE)
		draw_text(startX + 72,startY*1.5+(i*cellsize),pack_array[i].name);
		//Draw price
		draw_text(startX + 72, startY*1.5+(i*cellsize)+24,"x"+string(pack_array[i].price));
	}
	//Draw upgrade box
	draw_sprite_stretched(s_grid,0,startX,startY+cellsize*4,cellsize*2,cellsize*2);
	
	//Add drawing for upgardes
	if upgrade_ready{
		draw_text(startX,startY+cellsize*4+32,
		"Name: "+ string(current_tool.class.name));
		draw_text(startX,startY+cellsize*4+48,
		"Level: "+ string(tool_level));
		draw_text(startX,startY+cellsize*4+64,
		"Cost " + string(upgrade_cost));
	}
	
}