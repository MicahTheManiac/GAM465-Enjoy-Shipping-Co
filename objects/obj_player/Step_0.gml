var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));
var _key_down = keyboard_check(ord("S"));
var _key_up = keyboard_check(ord("W"));
var _key_carry = keyboard_check_pressed(ord("E"));

// Nearest Box
if (!is_carrying) box = instance_nearest(x, y, obj_box);

// Get Input
var _move_x = _key_right - _key_left;
var _move_y = _key_down - _key_up;

// Direction and Magnitude
var _input_dir = point_direction(0, 0, _move_x, _move_y);
var _input_magn = (_move_x != 0) || (_move_y != 0);

// Update Speed Vars.
speed_x = lengthdir_x(_input_magn * speed_move, _input_dir);
speed_y = lengthdir_y(_input_magn * speed_move, _input_dir);

if (global.is_level_lost) or (global.is_level_won)
{
	speed_x = 0;
	speed_y = 0;
}

// Carrying
if (_key_carry) and (!is_carrying) and (collision_circle(x, y, radius_carry * 2, box, false, true))
{
	// Check for Box not being Carried and not Counting
	// -- Checking is_finished does not allow us to Carry after Tape & Label
	if (!box.is_carried) and (!box.do_increment_count)
	{
		is_carrying = true;
		box.is_carried = true;
	}
}
else if (_key_carry) and (is_carrying)
{
	is_carrying = false;
	box.is_carried = false;
	box.x = x;
	box.y = y + (radius_carry * 1.8);
}

// Control Box
if (is_carrying) and (box.is_carried)
{
	box.x = x + radius_carry;
	box.y = y;
}

// Apply Movement
x = clamp(x + speed_x, 0, room_width);
y = clamp(y + speed_y, 0, room_height);