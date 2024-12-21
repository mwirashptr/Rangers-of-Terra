/// @description check

var _detect_radius = unit_data.detect_radius;
var _attack_radius = unit_data.attack_radius;
target_detected = collision_circle(x, y, _detect_radius, obj_team, false, false);
target_attack = collision_circle(x, y, _attack_radius, obj_team, false, false);

switch(state)
{
	case STATE.DEATH:
		unit_data.death();
	break;

    case STATE.IDLE:
        unit_data.idle();
        if(target_detected != noone)
        {    
            state = STATE.RUN;
        }
        with(obj_base_alien)
        {
            if(spawn_active == true)
            {
                other.state = STATE.RUN;
            }
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
			var _target = instance_nearest(x, y, obj_team);
			move_towards_point(_target.x, _target.y, unit_data.move_speed);
		}
		else if(target_detected == noone)
		{
			var _ranger_base = instance_nearest(x, y, obj_base_ranger);
			move_towards_point(_ranger_base.x, _ranger_base.y, unit_data.move_speed);
		}
	break;
	
	case STATE.ATTACK:
		if(target_attack == noone)
		{
            with(obj_base_alien)
            {
                if(spawn_active != true)
                {
                    other.state = STATE.IDLE;
                    return;
                }
            }    
			state = STATE.RUN;
		}
		else if(target_attack != noone)
		{
			speed = 0;
			unit_data.attack(target_attack);
		}
	break;
}
