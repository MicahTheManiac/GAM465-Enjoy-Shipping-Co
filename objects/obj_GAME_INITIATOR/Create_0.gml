var _seed = int64($"{current_day}{current_hour}{current_minute}{current_second}");
random_set_seed(_seed);
room_goto(ROOM_START);