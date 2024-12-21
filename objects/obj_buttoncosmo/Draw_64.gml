/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(uninteractable == true)
    {
        var _cd = current_cooldown div roomspeed();
        draw_text(x - 10, y - 30, _cd);
    }
