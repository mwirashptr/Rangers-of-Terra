/// @description Check State
//var _detect_radius = unit_data.detect_radius;
//var _attack_radius = unit_data.attack_radius;
target_detected = unit_data.target_detect();
target_attack = unit_data.target_attack();

if(state_override == true)
{
	state = STATE.OVERRIDE;
}

switch(state)
{
	case STATE.DEATH:
        if(unit_data.death() == true)
        {
            instance_destroy(id);
        }
	break;

	case STATE.OVERRIDE:
		unit_data.run();
		var _target = instance_nearest(x, y, obj_enemy);
		move_towards_point(_target.x, _target.y, unit_data.move_speed);
		if(target_attack != noone)
		{
			state = STATE.RUN;
			state_override = false;
		}
	break;
		
	case STATE.RUN:
		unit_data.run();
		if(target_attack != noone)
		{
			state = STATE.ATTACK;
		}
		else if(target_detected != noone)
		{
			_target = instance_nearest(x, y, obj_enemy);
			move_towards_point(_target.x, _target.y, unit_data.move_speed);
		}
		else if(target_detected == noone)
		{
			state = STATE.IDLE;
		}
	break;
	
	case STATE.ATTACK:
		if(target_attack == noone)
		{
			state = STATE.RUN;
		}
		else if(target_attack != noone)
		{
			speed = 0;
			unit_data.attack(target_attack);
		}
	break;

	case STATE.IDLE:
		unit_data.idle();
		if(target_detected == noone)
		{
			//if(_target_dot == noone)
			//
				//_target_dot = get_dot(id);
			//}
			//move_towards_point(_target_dot.x, _target_dot.y, unit_data.move_speed);
		}	
		if(target_detected != noone)
		{
			state = STATE.RUN;
		}
	break;
}
