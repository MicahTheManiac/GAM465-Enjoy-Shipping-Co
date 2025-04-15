var _scale_point = (mouse_x - x)

if (mouse_check_button(mb_left))
{
	if (mouse_x <= 64)
	{
		is_taping = true;
	}
}
else
{
	is_taping = false;
}

if (is_taping) and (!is_finished)
{
	image_xscale = (_scale_point / 1.28) * 0.01;
	image_alpha = 1;
	
	if (mouse_x >= room_width - 64)
	{
		is_finished = true;
		image_xscale += 0.5;
		instance_create_layer(mouse_x, mouse_y, "InstancesPacking", obj_shipping_label);
		instance_create_layer(0, 0, "InstancesPacking", obj_box);
	}
}