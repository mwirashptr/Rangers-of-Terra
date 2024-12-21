/// @description Insert description here
// You can write your code in this editor

unit_data = new GameManager();

timer_pre = unit_data.level.timer_pre_attack * roomspeed();
timer_on = unit_data.level.timer_on_attack * roomspeed();

runtime = function()
{
    if(timer_pre >= 2)
    {
        timer_pre--;
        return timer_pre;
    }
    else if(timer_on >= 2)
    {
        timer_on--;
        return timer_on;
    }
}

var _base = instance_nearest(x, y, obj_base_ranger);
if(_base != noone)
    {
        base_posx = _base.x;
        base_posy = _base.y;
    }

uninteractable = false;
cooldown = 1 * game_get_speed(gamespeed_fps);
current_cooldown = cooldown;

