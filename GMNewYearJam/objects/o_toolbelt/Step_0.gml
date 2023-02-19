//Detect if mouse is in range 
if active {
	if alphaGL < 1 alphaGL +=.02;
}
//Get length of array
var len = array_length(toolArray);
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);

//Loops through array and maps to rows and columns
for (var i = 0; i < len;i++){
		//Checks if mouse is located here and applies state
		if (i+offset) == col and row == 10{
			toolArray[@ i,0] = toolstate.hover;
			//Cell specific logic
			if selected == false{
				if mouse_check_button_pressed(mb_left) {
					audio_play_sound(snd_select,1,false);
					switch(toolArray[i,1])
					{
						case "Trowel": 
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Trowel",s_tool_trowel,10/other.trowel_level,other.trowel_level);
								sprite_index = class.sprite;
								state = process.moving;
							}
							selected = true;
						break;
					
						case "Water":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Water",s_tool_water,6/other.water_level,other.water_level);
								sprite_index = class.sprite;
								state = process.moving;
							}
							selected = true;
						break;
					
						case "Hoe":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Hoe",s_tool_hoe,10/other.hoe_level,other.hoe_level);
								sprite_index = class.sprite;
								state = process.moving;
							}
							//Tutorial Logic 
							if global.tutorial
							{
								with(o_mama)
								{
									if tut == 0
									{
										o_textbox.char_current = 0;
										tut+=1;
									}
								}
							}
							selected = true;
						break;
					
						case "Love":
							if !audio_is_playing(snd_heartbeat) audio_play_sound(snd_heartbeat,2,true);
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Love",s_tool_love,0);
								sprite_index = class.sprite;
								TweenEasyScale(image_xscale,image_yscale,1.2,1.2,0,30,EaseInOutElastic,TWEEN_MODE_PATROL);
								state = process.moving;
							}
							selected = true;
						break;
						
						case "Bucket":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Bucket",s_tool_bucket,0);
								sprite_index = class.sprite;
								state = process.moving;
							}
							selected = true;
						break;
					
					}
				}
			}
		}
		else
		{
			toolArray[@ i,0] = toolstate.inactive;
		}
}