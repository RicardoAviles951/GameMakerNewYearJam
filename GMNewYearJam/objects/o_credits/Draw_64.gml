var len = array_length(devs);
GetInput();

var xpad = 16;
var ypad = 96;
if active {
switch(page){
	case 0:
	draw_set_font(f_title);
	draw_text_transformed_color(startX+xpad,startY,title[page],.5,.5,0,c,c,c,c,alpha);

	
	for (var i = 0;i < len; i++){
		drawrole(devs[i].name,devs[i].role,devs[i].twitter,devs[i].site,i);
	}
	
		if enter or left_click{ page += 1; alpha = 0}
	break;
	
	case 1:
	
	draw_text_transformed_color(startX+xpad,startY,title[page],.5,.5,0,c,c,c,c,alpha);
	draw_text_transformed_color(startX+xpad, startY+ypad, "Created by Amber Williams, Kenna Lindsay and Ricardo Aviles\n\nTiny GUI Pack by Vryell   vryell.itch.io",.25,.25,0,c,c,c,c,alpha);
		if enter or left_click{ page += 1; alpha = 0}
	break;
	
	case 2:

	draw_text_transformed_color(startX+xpad,startY,title[page],.5,.5,0,c,c,c,c,alpha);
	draw_text_transformed_color(startX+xpad, startY+ypad, "Freesounds.org - 'Shovel digging.wav' by drummerman\nsound was modified for use\n\nFreesounds.org - [UI Sound] Approval - High Pitched Bell Synth\nby GabFitzgerald\n\nFreesounds.org - 'Clean Goose.wav' by _tyler7687\n\nFreesounds.org - 'lofibeat_70bpm.wav' by Seth_Makes_Sounds",.25,.25,0,c,c,c,c,alpha);

		if enter or left_click{ page += 1; alpha = 0} 
	break;
	
	case 3:

	draw_text_transformed_color(startX+xpad,startY,title[page],.5,.5,0,c,c,c,c,alpha);
	draw_text_transformed_color(startX+xpad, startY+ypad, "JD\nMom and Dad\nMhmd\nEatnumber1\nIGDA Foundation \nThe Original Teddy Gainz Team\nSlynyrd",.25,.25,0,c,c,c,c,alpha);
	if enter or left_click
	{
		alpha = 0;
		PlaySeq(sq_fade_white,1,seqdir_left);
		audio_stop_all();
		room_goto(Menu);
		active = false;
	} 
	break;
}
}
	
