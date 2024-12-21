// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

uninteractable = false;
cooldown = 10 * game_get_speed(gamespeed_fps);
current_cooldown = cooldown;

interact = function()
{
if(uninteractable != true)
    {
        with(obj_game_manager)
        {
            if(unit_data.gold < 300)
            {
                return;
            }
        unit_data.gold -= 300;
        other.uninteractable = true;
    }
}
}

spawn = function()
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(base_posx + 30 + ((157 - _random)*0.7), _random, -1, obj_unit_to_spawn);
with(_inst)
{
unit_data = new UnitCosmo(id);
}
}