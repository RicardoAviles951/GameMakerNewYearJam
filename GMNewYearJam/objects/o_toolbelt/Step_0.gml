//Detect if mouse is in range 

//Get length of array
var len = array_length(toolArray);
//Get coloumns and rows for GUI
col = floor(mouse_gui_x/64);
row = floor(mouse_gui_y/64);

//Loops through array and maps to rows and columns
for (var i = 0; i < len;i++){
		//Checks if mouse is located here and applies state
		if (i+7) == col and row == 10{
			toolArray[@ i,0] = toolstate.hover;
			//Cell specific logic
			if selected == false{
				if mouse_check_button_pressed(mb_left) {
					audio_play_sound(snd_select,1,false);
					switch(toolArray[i,1])
					{
						case "Trowel": 
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Trowel",s_tool_trowel,4);
								sprite_index = class.sprite;
								state = process.moving;
							}
							selected = true;
						break;
					
						case "Water":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Water",s_tool_water,5);
								sprite_index = class.sprite;
								state = process.moving;
							}
							selected = true;
						break;
					
						case "Hoe":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Hoe",s_tool_hoe,6);
								sprite_index = class.sprite;
								state = process.moving;
							}
							with(o_mama){
								if tut == 0{
									o_textbox.char_current = 0;
									tut+=1;
								}
							}
							selected = true;
						break;
					
						case "Love":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Love",s_tool_love,0);
								sprite_index = class.sprite;
								state = process.moving;
							}
							selected = true;
						break;
						
						case "Bucket":
							with(instance_create_layer(mouse_x-16,mouse_y-16,"Tools",o_tools)){
								class        = new ToolClass("Bucket",s_tool_bucket,2);
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
	

//DEBUG 
//Prints current row and column mouse is in
//
if (mouse_gui_x > startX and mouse_gui_x < (startX+length)) {
	//show_debug_message("ENTER");
	show_debug_message("Column "+ string(col));
	show_debug_message("row "+ string(row));
}