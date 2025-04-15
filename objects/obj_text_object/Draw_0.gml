if (!do_act_as_button)
{
	f_draw_text_font(x, y, text, size, color, valign, halign);
}
else
{
	// Set Color
	var _color = color;
	if (is_selected) _color = color_accent;
	
	// Rotation
	var _rot = f_wave(-5, 5, 10, 0);
	
	// Set Values
	draw_set_color(_color);
	draw_set_valign(valign);
	draw_set_halign(halign);
	
	// Draw Shadow
	draw_text_transformed_color(x + size, y + size, text, size, size, _rot, c_black, c_black, c_black, c_black, 0.5);
	
	// Draw Text
	draw_text_transformed_color(x, y, text, size, size, _rot, _color, _color, _color, _color, 1);
	
	// Reset Font
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}