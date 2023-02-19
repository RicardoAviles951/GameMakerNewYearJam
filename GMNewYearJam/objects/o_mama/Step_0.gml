switch(state)
{
	case mama.tutorial:
		switch(tut)
		{
			case 0:
			if !instance_exists(o_textbox){
				with(instance_create_layer(128,-256,"Controllers",o_textbox))
				{
					myText = "Welcome to Sunny Side Isle, it's so nice to see you again. I'm so grateful you came to help me in my garden.\n\nYou can start by LEFT CLICKING on the the GARDEN HOE."
					
				}
			}
			sprite_index = s_mama_celebrate;
				//box.myText = "Welcome to Sunny Side Isle, it's so nice to see you again. I'm so grateful you came to help me in my garden.\n\nYou can start by clicking on the the Garden Hoe."
				
			break;
				
			case 1:
				o_textbox.myText = "Good! Remember, you can unequip a tool/seed using RIGHT CLICK. Now hover over a grass tile and click it to clear the ground.";
				sprite_index = s_mama_idle;
			break;
			
			case 2:
				o_textbox.myText = "Nice work! Now click on the TROWEL. Wait for the garden hoe to finish working, then click on your dirt patch to make a hole";
				sprite_index = s_mama_celebrate;
			break;
			
			case 3:
				o_textbox.myText = "I can see you are a fast learner. Click on the SEEDS on the right of your screen and select one.";
				sprite_index = s_mama_idle;
			break;
			
			case 4:
				o_textbox.myText = "Now click on the hole you just dug to place the Seeds.";
			break;
			
			case 5:
				o_textbox.myText = "Don't forget to water those babies! Unequp your seed and click on the WATERING CAN, then click the dirt mound to WATER them.";
			break;
			
			case 6:
			o_textbox.myText = "Great work! I can taste the fresh Chickpeas already. Press ENTER to continue.";
			sprite_index = s_mama_celebrate;
				
			break;
			
			case 7:
				o_textbox.myText = "Thank you for your help.You're going to be so nice to have around here, just like my precious Teddy.";
			break;
			
			case 8:
			o_textbox.myText = "Now you have to be patient, since it can take some time for the seeds to sprout. Once they are ready for harvest, click the BUCKET to take them all in!";
			sprite_index = s_mama_idle;
			break;
			
			case 9:
				o_textbox.myText = "You can also buy more seeds and upgrade tools in the shop on the left of your screen.Now you are all set! Please feel free to plant any of the other seeds we have.";
			break;
			
			case 10:
				o_textbox.myText = "And of course, please have a nice 'thyme' at my garden... hehe!";
				sprite_index = s_mama_celebrate;
			break;
			case 11:
				instance_destroy(o_textbox)
				sprite_index = s_mama_idle;
				state = mama.idle;
			break;
		}
	break;
	
	case mama.idle:
		//Logic for determining to quip or not;
		if quip 
		{
			if !instance_exists(o_quipbox)
			{
				instance_create_layer(x+16,y-16,"seqs",o_quipbox);
			}
			//Wait
			time_source_start(timer);
			
		}
		else
		{
			var ran = irandom(6);
			if ran == 1 
			{
				pathstate = choose(paths.pth1,paths.pth3); 
				state = mama.walk;
			}
			if instance_exists(o_quipbox)
			{
				instance_destroy(o_quipbox);
			}
			
			//Wait
			time_source_start(timer);
		}
		
	break;
	
	case mama.walk:
		switch(pathstate)
		{
			case paths.pth1:
				PathPlay(Path_mama_down,1,5,paths.pth2,s_mama_walk_down);
			break;
				
			case paths.pth2:
				PathPlay(Path_mama_down,-1,1,paths.pth3,s_mama_walk_up);
			break;
			
			case paths.pth3:
				PathPlay(Path_mama_right,1,5,paths.pth4,s_mama_walk_right);
			break;
			
			case paths.pth4:
				exitpath = true;
				PathPlay(Path_mama_right,-1,5,paths.pth1,s_mama_walk_left);
			break;
		}
	
	break;
}

//show_debug_message("Mama state " + string(state));
//show_debug_message("Walking " + string(walking));
//show_debug_message("Path State "+ string(pathstate));