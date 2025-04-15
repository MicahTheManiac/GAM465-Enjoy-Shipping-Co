// Count down timer
timer_ticks = clamp(timer_ticks - 1, 0, 60);

// When when ticks timer runs out
if (timer_ticks <= 0)
{
	// Decrease Seconds
	timer_seconds = clamp(timer_seconds - 1, 0, 59);
	
	// Clamp Ticks
	if (timer_minutes + timer_seconds > 0)
	{
		timer_ticks = game_get_speed(gamespeed_fps);
	}
	
	// Decrease Minutes
	if (timer_seconds <= 0) and (timer_minutes > 0)
	{
		timer_minutes = clamp(timer_minutes - 1, 0, infinity);
		timer_seconds = 59;
	}
}