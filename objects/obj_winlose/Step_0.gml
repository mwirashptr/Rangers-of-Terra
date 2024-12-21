/// @description Insert description here
// You can write your code in this editor
with(obj_base_alien)
{
    if(unit_data.current_health < 0)
    {
        audio_stop_all();
        instance_deactivate_layer("Instances");
        layer_set_visible("Win_Lose", true);
        other.isvisible = true;
        other.sprindex = 0;
    }
}

with(obj_base_ranger)
{
if(unit_data.current_health < 0)
    {
        audio_stop_all();
        instance_deactivate_layer("Instances");
        layer_set_visible("Win_Lose", true);
        other.isvisible = true;
        other.sprindex = 1;
    }
}

if(isvisible == false)
{
    instance_deactivate_object(obj_continue);
    instance_deactivate_object(obj_retry);
}
