target_detected = unit_data.target_detect();
target_attack = unit_data.target_attack();

switch(state)
{
    case STATE.DEATH:
        if(unit_data.death() == true)
        {
            instance_destroy(id);
        }
    break;

    case STATE.IDLE: //gold full
        image_xscale = -1;
        unit_data.run();
        var _target = instance_nearest(x, y, obj_base_ranger);
        move_towards_point(_target.x, _target.y, unit_data.move_speed);
        if(collision_circle(x, y, 1, obj_base_ranger, false, false) != noone)
        {   
            with(obj_game_manager)
            {
                unit_data.gold += other.unit_data.current_gold;
                other.unit_data.current_gold = 0;
            }
            state = STATE.RUN;
        }
    break;
    
    case STATE.RUN:
        image_xscale = 1;
        unit_data.run();
        if(target_attack != noone)
        {
            state = STATE.ATTACK;
        }
        else if(target_detected != noone)
        {
            _target = instance_nearest(x, y, obj_goldmine);
            move_towards_point(_target.x, _target.y, unit_data.move_speed);
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
}