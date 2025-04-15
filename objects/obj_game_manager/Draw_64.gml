if (global.is_level_lost)
{
	var _string = "Click to Restart";
	f_draw_text_font((global.window_width + 2) / 2, (global.window_height + 2) / 2, _string, 2, c_white, fa_middle, fa_center);
	f_draw_text_font(global.window_width / 2, global.window_height / 2, _string, 2, c_red, fa_middle, fa_center);
}

if (global.is_level_won)
{
	var _string = "Click to Advance";
	if (global.level == 10) _string = "Congratulations!\nYou have Beat the game!\nClick to Restart";
	
	f_draw_text_font((global.window_width + 2) / 2, (global.window_height + 2) / 2, _string, 2, c_white, fa_middle, fa_center);
	f_draw_text_font(global.window_width / 2, global.window_height / 2, _string, 2, c_orange, fa_middle, fa_center);
}