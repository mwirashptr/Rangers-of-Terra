/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var _base = instance_nearest(x, y, obj_base_ranger);
if(_base != noone)
{
	base_posx = _base.x;
	base_posy = _base.y;
}
