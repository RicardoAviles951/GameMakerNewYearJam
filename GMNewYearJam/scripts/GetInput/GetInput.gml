function GetInput(){
	
	left_click  = mouse_check_button_pressed(mb_left);
	right_click = mouse_check_button_pressed(mb_right);
	
	left_hold   = mouse_check_button(mb_left);
	right_hold  = mouse_check_button(mb_right);
	
	enter       = keyboard_check_pressed(vk_enter);
	
	key_p = keyboard_check_pressed(ord("P"));
	escape = keyboard_check_pressed(vk_escape);
	
}