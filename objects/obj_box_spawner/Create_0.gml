spawn_rate = 10;
counter = 0;

function f_get_level()
{
	switch(global.level)
	{
		case 1:
		spawn_rate = 8;
		global.box_requirement = 10;
		break;
		
		case 2:
		spawn_rate = 7;
		global.box_requirement = 13;
		break;
		
		case 3:
		spawn_rate = 6;
		global.box_requirement = 16;
		break;
		
		case 4:
		spawn_rate = 5;
		global.box_requirement = 20;
		break;
		
		case 5:
		spawn_rate = 5;
		global.box_requirement = 30;
		break;
		
		case 6:
		spawn_rate = 5;
		global.box_requirement = 40;
		break;
		
		case 7:
		spawn_rate = 5;
		global.box_requirement = 50;
		break;
		
		case 8:
		spawn_rate = 4;
		global.box_requirement = 60;
		break;
		
		case 9:
		spawn_rate = 4;
		global.box_requirement = 80;
		break;
		
		case 10:
		spawn_rate = 3;
		global.box_requirement = 100;
		break;
	}
}

f_get_level();