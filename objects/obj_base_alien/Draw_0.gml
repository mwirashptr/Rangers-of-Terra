/// @description Insert description here
// You can write your code in this editor

draw_self();

var _percent = unit_data.current_health / unit_data.max_health * 100 div 1;

if(unit_data.current_health < unit_data.max_health)
    {
       draw_healthbar(x - (sprite_width / 2) + 10, y - sprite_height - 20, x + (sprite_width / 2) - 10, y - sprite_height - 25, _percent, c_black, c_red, c_red, 0, 1, 1);
    }