// Draw Background
draw_sprite(spr_box_packing_background, 0, 0, 0);

// Draw Self
draw_self();

// Draw Taper
if (!is_finished)
{
	draw_sprite(spr_taper, int64(image_xscale), mouse_x, y);
	
	// Draw Start
	if (!is_taping)
	{
		f_draw_text_font(x + 10, y + 32, "↑\nStart Here", 0.5, c_yellow)
	}
}