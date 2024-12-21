/// @description Insert description here
// You can write your code in this editor
var _realtime = timer / game_get_speed(gamespeed_fps);
var _minute = _realtime div 60;
var _second = _realtime mod 60 div 1;
var _timestring = string(_minute) + " : " + string(_second);
draw_text_transformed(x, y, _timestring, 3, 3, 0);
