/// @description Insert description here
// You can write your code in this editor
with(obj_game_manager)
{
    if(timer_pre == 2)
    {
        other.spawn_active = true;
        timer_pre = 0;
    }
}
if(spawn_active == true)
{
    if(curren_time < 0)
    {
        for(var _i = 0; _i < 2; _i++)
        {
            var _random = irandom_range(137, 167);
	        var _inst = instance_create_depth(x - 40, y + 157 - _random, -1, obj_alien);
            with(_inst)
            {            
                unit_data = new UnitGravax(id);
            }    
        }
	    curren_time = time;
    }
    //curren_time--;
}


