if (instance_exists(obj_timer)) and (obj_timer.timer_ticks <= 1) and (obj_timer.timer_minutes + obj_timer.timer_seconds > 0)
{
	counter++;
}

if (counter == spawn_rate) and (instance_count < 200)
{
	counter = 0;
	
	var _x = irandom_range(8, 232);
	var _y = irandom_range(278, 352);
	
	if (!collision_circle(_x, _y, 18, obj_box, false, true))
	{
		instance_create_layer(_x, _y, "Instances", obj_box);
	}
	// Yeah, we repeat the code, but there isn't much to change...
	else
	{
		_x = irandom_range(48, 232);
		_y = irandom_range(290, 352);
		
		if (!collision_circle(_x, _y, 18, obj_box, false, true))
		{
			instance_create_layer(_x, _y, "Instances", obj_box);
		}
	}
}