if global.tutorial
{
	instance_destroy(o_textbox)
	sprite_index = s_mama_idle;
	state = mama.idle;
	global.tutorial = false;
}
