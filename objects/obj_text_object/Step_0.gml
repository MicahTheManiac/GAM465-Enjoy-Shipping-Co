var _width = string_width(text) * size;
var _height = string_height(text) * size;

if (do_act_as_button)
{
	// Check if Cursor is in Position
	if (mouse_x >= x - (_width / 2)) and (mouse_x <= x + (_width / 2)) and (mouse_y >= y - (_height / 2)) and (mouse_y <= y + (_height / 2))
	{
		is_selected = true;
	}
	else
	{
		is_selected = false;
	}
	
	if (is_selected) and (mouse_check_button_pressed(mb_left))
	{
		room_goto(level_to_load);
	}
}