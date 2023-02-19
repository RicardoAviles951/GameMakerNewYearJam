///@description Initialize Menu
//Menu Options
option[0] = "New Game";
option[1] = "Quick Play";
option[2] = "Credits";
option[3] = "Exit";

//Number of buttons
buttons = 4;

//Creates a set of menu states
enum menu_states{
	inactive,
	active
}
//Sets the menu state
menu_state = menu_states.inactive;

startX = room_width/8;
//Creates buttons outside of room
startY = -room_height;
//Where buttons will end up
finalY = room_height/8;
padding = 68;
//Generate Button instances
for(var i = 0; i < buttons; i++){
	//Create the button objects
	button = instance_create_layer(startX,startY+i*padding,"Instances",o_buttons);
	//Tween buttons into place
	with (button)
	{
		type[0] = other.option[i];
		TweenEasyMove(x,y,other.startX,other.finalY+i*other.padding,irandom_range(5,10),45,EaseOutBack);
	}
	
}
active = true;
alpha = 0;
//Set menu state after 60 frames
alarm[0] = 60;

x_adj = 0;
y_adj = 0;