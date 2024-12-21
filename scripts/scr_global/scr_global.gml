enum STATE
{
	OVERRIDE,
	IDLE,
	RUN,
	ATTACK,
	DEATH
}

function roomspeed()
{
    return game_get_speed(gamespeed_fps);
}

function get_dot(_id)
{
	for(var _i = 0; _i <= instance_number(obj_dot); _i++)
	{
		dot[_i] = instance_find(obj_dot, _i);
		
		if(dot[_i].is_empty == true)
		{
			dot[_i].is_empty = false;
			dot[_i].unit = _id;
			return dot[_i];
		}
	}

}

array_total = function(_arg_array)
{
	var _count = 0;
	var _array = _arg_array;
	var _array_length = array_length(_array);
	
	for(var _i = 0; _i < _array_length; _i++)
	{
		if(_array[i] == undefined)
		{
			_array[i] = _array[i + 1];
		}
		else if(_array[i] != undefined)
		{
			_count++;
		}
	}
	return _count;
}