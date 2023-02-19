if active{
//Draw toolbar sprite at specified location and size
//draw_sprite_stretched(s_toolbar,0,startX,startY,cellsize,cellsize);
draw_sprite_ext(s_UI_shop,0,startX+32,startY+32,scale,scale,0,c_white,1);
draw_set_font(f_GUI);
//Draw grid
//draw_sprite_ext(s_grid,0,startX,startY,4,4,0,color,1);

	
if sidemenu
{
	//Draw backdrop for shop
	draw_sprite_stretched(s_UI_container,0,startX,startY+cellsize,cellsize*2,cellsize*5);
	//Draw Seed Packets
	for (var i = 0; i < 3; i++)
	{
		//Draw packs
		draw_sprite_ext(pack_array[i].Psprite,0,startX,startY*2+(i*cellsize),pack_array[i].scale,pack_array[i].scale,pack_array[i].rot,c_white,1);
		//Draw names (LIKELY TO CHANGE)
		//draw_text(startX + 72,startY*1.5+(i*cellsize),pack_array[i].name);
		//Draw coin sprite
		draw_sprite_ext(s_coin,0,startX + 72, startY*1.5+(i*cellsize+16),2,2,0,c_white,1);
		//Draw price
		var c = make_color_rgb(204,219,255);
		draw_text_color(startX + 72, startY*1.5 + (i*cellsize) + 42,"x" + string(pack_array[i].price),c,c,c,c,1);
	}
	//Draw upgrade box
	draw_sprite_stretched(s_grid,0,startX,startY + cellsize*4,cellsize*2,cellsize*2);
	
	//draw hover text
	if hover 
		{
			var hue_bg = make_color_rgb(158,173,207);
			var hue_txt = make_color_rgb(75,89,173);
			var len = string_width(hovername);
			draw_roundrect_color(mouse_gui_x-16,mouse_gui_y-48,mouse_gui_x+len-12,mouse_gui_y-24,hue_bg,hue_bg,false);
			draw_text_color(mouse_gui_x-12,mouse_gui_y-48,hovername,hue_txt,hue_txt,hue_txt,hue_txt,1);
		}
	//Add drawing for upgardes
	if upgrade_ready{
		
		//draw_text(startX,startY+cellsize*4+32,
		//"Name: "+ string(current_tool.class.name));
		var c = make_color_rgb(204,219,255);
		draw_set_halign(fa_center);
		draw_text_color(startX+64,startY+cellsize*4+72,
		"Level: "+ string(tool_level),c,c,c,c,1);
		draw_text_color(startX+64,startY+cellsize*4+96,
		"Cost " + string(upgrade_cost),c,c,c,c,1);
		draw_set_halign(fa_left);
		draw_sprite_ext(current_tool.class.sprite,0,startX+32,startY +cellsize*4+16,popscale,popscale,0,c_white,1);
	}
	else{
		var c = make_color_rgb(204,219,255);
		draw_set_halign(fa_center);
		draw_text_transformed_color(startX+64, startY+cellsize*4+24,"Place\nTools\nHere",1,1,0,c,c,c,c,1);
		draw_set_halign(fa_left);
	}
	
}
}