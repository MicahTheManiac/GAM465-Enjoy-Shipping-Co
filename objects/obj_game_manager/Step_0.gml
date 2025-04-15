// Timer Variables
var _min = -1;
var _sec = -1;

// Get our Timer
if (instance_exists(obj_timer))
{
	_min = obj_timer.timer_minutes;
	_sec = obj_timer.timer_seconds;
}

// Show Game Win/Loss Screens
if (global.is_level_lost) layer_set_visible("UILayerLose", true);
if (global.is_level_won) layer_set_visible("UILayerWin", true);

// When Timer is Complete
if (_min == 0) and (_sec == 0)
{
	// If we have enough boxes
	if (global.box_count >= global.box_requirement) and (!global.is_level_lost)
	{
		global.is_level_won = true; // We Win!
	}
	// If we don't have enough
	else if (global.box_count < global.box_requirement) and (!global.is_level_won)
	{
		global.is_level_lost = true; // We Lose.
	}
}

// Get Click
if (mouse_check_button_pressed(mb_any))
{
	// If the level is lost
	if (global.is_level_lost)
	{
		// Reset Vars
		f_clear_level();
		
		// Restart Level
		room_restart();
	}
	// If level is won
	else if (global.is_level_won)
	{
		// Reset Vars
		f_clear_level();
		
		// Increase Level
		global.level = clamp(global.level + 1, 1, 10);
		
		// Restart Level
		room_restart();
	}
}