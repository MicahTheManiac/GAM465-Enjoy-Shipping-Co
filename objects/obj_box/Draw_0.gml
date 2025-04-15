// Draw Shadow
if (!is_carried) draw_sprite(spr_shadow, 0, x, y + 8);

// Draw Self
draw_self();

// Switch Sprite if Finished
if (is_finished) image_index = 1;
else image_index = 0;