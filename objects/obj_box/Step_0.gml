// If we are not being Carried
if (!is_carried)
{
	// Taping Depot
	if (x <= 240) and (y <= 90) and (!is_finished)
	{
		f_activate_packing();
		is_finished = true;
	}
	
	// Shipping Depot
	if (x >= 340) and (y <= 240) and (is_finished) and (!do_increment_count)
	{
		global.box_count++;
		do_increment_count = true;
	}
}