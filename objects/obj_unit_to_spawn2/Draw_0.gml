/// @description Insert description here
// You can write your code in this editor

draw_self();

var _percent = unit_data.current_health / unit_data.max_health * 100 div 1;

if(unit_data.current_health < unit_data.max_health)
    {
       // draw_healthbar(x - 20, y - 70, x + 20, y - 67, _percent, c_black, c_red, c_red, 0, 1, 1);
    }