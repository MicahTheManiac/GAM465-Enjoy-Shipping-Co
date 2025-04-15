speed_x = 0;
speed_y = 0;
speed_move = 3;
radius_carry = 12;
box = noone;

is_carrying = false;

// Set Collision
mask_index = spr_player_idle;

// Increase Speed if we are on Level 3+
if (global.level >= 3) speed_move = clamp(speed_move + (global.level - 2), 3, 8);

// Deactivate Packing Layer
f_deactivate_packing();