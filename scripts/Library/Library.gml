#macro ROOM_START rm_title

global.window_width = 0;
global.window_height = 0;
global.level = 1;
global.box_count = 0;
global.box_requirement = 0;
global.is_level_won = false;
global.is_level_lost = false;

// Font Func
function f_draw_text_font(x, y, _text, _size = 1, _color = c_white, _valign = fa_top, _halign = fa_left, _font = fnt_silver){
	// Set Values
	draw_set_font(_font);
	draw_set_color(_color);
	draw_set_valign(_valign);
	draw_set_halign(_halign);
	// World Size Value is .167
	
	// Draw Text
	draw_text_transformed_color(x, y, _text, _size, _size, 0, _color, _color, _color, _color, 1);
	
	// Reset Font
	draw_set_font(fnt_silver);
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
}

// Swap Bool
function f_swap_bool(_bool)
{
	if !_bool return true;
	if _bool return false;
}

// Button Test
function f_button_test()
{
	show_debug_message(" > Button Working")
}

// Deactivate Packing Layer
function f_deactivate_packing()
{
	with (obj_tape)
	{
		sprite_index = spr_tape;
		image_xscale = 0.01;
		image_alpha = 0;

		is_taping = false;
		is_finished = false;
		
		instance_destroy(obj_shipping_label);
		instance_deactivate_layer("InstancesPacking");
		instance_activate_layer("InstancesPlayer");
	}
}

// Activate Packing Layer -- Call Through This
function f_activate_packing()
{
	instance_deactivate_layer("InstancesPlayer");
	instance_activate_layer("InstancesPacking");
}

// Format Number with Preceding Zeroes
function f_precede_zeroes(_string, _preceding_zeroes)
{
	var _str = "";
	
	var _len = string_length(string(_string));
	
	for (var _i = 0; _i < (_preceding_zeroes + 1) - _len; _i++ )
	{
		_str += "0";
	}
	
	_str = $"{_str}{_string}";
	return _str;
}

// Clear Level Data
function f_clear_level()
{
	global.box_count = 0;
	global.is_level_won = false;
	global.is_level_lost = false;
}