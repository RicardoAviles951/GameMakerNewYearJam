GetInput();
posx = mouse_gui_x;
posy = mouse_gui_y;
alpha = 1;
if left_hold or right_hold
{
	subimage = 1;
	posy = mouse_gui_y + 8;
}
else{
	subimage = 0;
}

if instance_exists(o_toolbelt)
{
	if o_toolbelt.selected = true alpha = .5;
}