/// @description Insert description here
// You can write your code in this editor

event_inherited();

interact = function()
{
	with(obj_unit_to_spawn)
	{
		state_override = false;
		state = STATE.IDLE;
		speed = 0;
	}	
}