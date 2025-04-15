var _min = f_precede_zeroes(timer_minutes, 1);
var _sec = f_precede_zeroes(timer_seconds, 1);
var _tic = f_precede_zeroes(timer_ticks, 1);

var _x = 450 * BASE_SCALE;
var _y = 260 * BASE_SCALE;

f_draw_text_font(_x, _y, $"{_min}:{_sec}:{_tic}\nBoxes Ready: {global.box_count} / {global.box_requirement}\nLevel {f_precede_zeroes(global.level, 1)}", 1.5);