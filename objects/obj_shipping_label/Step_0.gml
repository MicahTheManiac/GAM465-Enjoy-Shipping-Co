// Check for Mouse Pressed (Released after tape, then pressed)
if (mouse_check_button_pressed(mb_left))
{
	is_finished = true;
}

// If we are Finished
if (is_finished)
{
	timer_ticks++;
	
	if (timer_ticks == 30) f_deactivate_packing();
}
else
{
	x = mouse_x - sprite_width / 2;
	y = mouse_y - sprite_height / 2;
}