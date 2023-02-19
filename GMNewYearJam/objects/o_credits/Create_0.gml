//Var that stores if GUI is on or off. 
active = false;
c = make_color_rgb(181, 252, 176);
//Sets credits page to 0
page = 0;
alpha = 0;
//Major Titles for sections of credits
title[0] = "Developers";
title[1] = "Visual Assets";
title[2] = "Sound Assets";
title[3] = "Egg-stra Special Thanks";


//Dev structs that hold infor
amber   = new DevStruct("Amber N. Williams","Artist","ambrowskii", "ambrowskii.com");
kenna   = new DevStruct("Kenna M. Lindsay", "Writer and Artist", "Kenna_Lindsay", "kennamlindsay.com");
ricardo = new DevStruct("Ricardo Aviles", "Gameplay Design and Programmer","ricky_games20", "ricardoaviles.itch.io");
rika    = new DevStruct("Rika Watanabe", "Writer", "riki_0ntherocks", "itch.io/profile/riki-0ntherocks");

//Array that holds dev structs
devs[0] = amber;
devs[1] = kenna;
devs[2] = ricardo;
devs[3] = rika;

//Get dimensions 
//guiW = display_get_gui_width();
//guiH = display_get_gui_height();
//Assign starting x and y values
startX = 64;
startY = 64;

//Draws information from dev struct
drawrole = function(Name,Role,TW,Site,_x){
	draw_text_ext_transformed_color(startX+16, startY+(96)+(128*_x),
	(Name + " - " + Role + "\nTwitter   @" + TW + "\nWebsite   " + Site),128,10000,.25,.25,0,c,c,c,c,alpha 
	);
}

//Alarm for active state
alarm[0] = 30;