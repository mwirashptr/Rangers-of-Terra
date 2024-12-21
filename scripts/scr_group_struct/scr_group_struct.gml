function Group() constructor
{
	units = array_create(100, noone);
	state = STATE.IDLE;
	unit_formation = noone;
	
	add_unit = function (_arg)
	{
		var _target = _arg;
		
		array_push(units, _target);
	}
	
	get_unit_total = function()
	{
		return array_total(units);
	}
	
	set_formation = function()
	{

	}
	
	set_state_all = function()
	{
		for(var _i = 0; _i < array_length(units); _i++)
		{
			var _unit = units[i];
			
			if(_unit != undefined)
			{
				_unit.state = state;
			}
		}
	}
	
	update = function()
	{
		for(var _i = 0; _i < array_length(units); _i++)
		{
			var _unit = units[i];
			
			if(_unit != undefined)
			{
				_unit.update();
			}
		}
	}
}