// Draw Shadow
draw_sprite(spr_shadow, 0, x, y + 12);

// Draw Self will draw Legs
draw_self();

// Body Sprite
var _body = spr_player_idle;
image_xscale = 1;

if (speed_x != 0) or (speed_y != 0)
{
	image_speed = 1;
	
	// Set Body
	if (is_carrying)
	{
		_body = spr_player_carry;
	}
	else
	{
		_body = spr_player_walk;
	}
	
	// Direction
	if (speed_x < 0) or (speed_y > 0)
	{
		if (!is_carrying) image_xscale = -1;
	}
}
else
{
	image_speed = 0;
	image_index = 1;
	
	// Set Body
	if (is_carrying)
	{
		_body = spr_player_carry;
	}
	else
	{
		_body = spr_player_idle;
	}
}

// Draw Body
draw_sprite_ext(_body, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);