/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(uninteractable == true)
    {
        if(current_cooldown <= 0)
        {
            spawn();
            uninteractable = false;
            current_cooldown = cooldown;
        }
    current_cooldown--;
}