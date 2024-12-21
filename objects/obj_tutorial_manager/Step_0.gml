/// @description Insert description here
// You can write your code in this editor

switch (tutorial) {
    case 0 : 
        with (obj_buttonminer)
        {
            if(uninteractable == true)
            {
                other.tutorial = 1;
            }
        }
        break;
    
    case 1:
        with(obj_hand)
        {
            x = 530;
        }    
    
        var _cnt = instance_number(obj_unit_to_spawn)
        if( _cnt == 1)
        {
            with(obj_buttonxeno)
            {
                if(uninteractable == true)
                {
                    other.tutorial = 2;
                }
            }
        }
        break;
    
    case 2:
        with(obj_hand)
        {
            visible = false;
            x = 1175;
            y = 145;
            image_angle = -40;
        }
        with(obj_camera)
        {
            if(x >= 1040)
            {
                other.tutorial = 3;
            }
        }
        break;
    
    case 3:
        with(obj_hand)
        {
            visible = true;
        }
        with(obj_unit_to_spawn)
        {
            if(state_override == true)
            {
                other.tutorial = 4;
            }
        }
    break;
    
    default:
        with(obj_hand)
        {
            visible = false;
        }
    break;
}


