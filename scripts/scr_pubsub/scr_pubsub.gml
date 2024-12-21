global.registered_event = {}

function publish(_event_name, _context = {})
{
	var _is_event_registered = 	variable_struct_exists(
		global.registered_event,
		event_name
	);
	
	if(not _is_event_registered) return;
	
	var _callbacks = variable_struct_get(
		global.registered_event,
		_event_name
	);
	
	for(var _i = 0;
		i < array_length(_callbacks);
		i++)
	{
		var _callback = _callbacks[i];
		_callback(_context);
	}
}

function subscribe(_event_name, _callback)
{
	var _is_event_registered = variable_struct_exists(
		global.registered_event,
		_event_name
	);
	
	if(not _is_event_registered)
	{
		variable_struct_set(
			global.registered_event,
			_event_name,
			[]
		);
	}
	
	var _callbacks = variable_struct_get(
		global.registered_event,
		_event_name
	);
	
	array_push(_callbacks, _callback);
}