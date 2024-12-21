function Unit(_id) constructor 
{
	sprite = 
	{
		idle	: noone,
		run		: noone,
		attack	: noone,
		death	: noone
	}

attacksound = sfx_tower_diserang;
	
	uid				= _id;
	max_health		=0;
	move_speed		= 0;
	attack_power	= 0;
	attack_radius	= 0;
	detect_radius	= 0;
	unit_type		= "";
	current_health	= max_health;
	
	idle = function()
	{
		if(uid.sprite_index != sprite.idle)
		{
			uid.sprite_index = sprite.idle;
			//uid.image_xscale = 0.5;
			//uid.image_yscale = 0.5;
		}
	}
	
	run = function ()
	{
		if(uid.sprite_index != sprite.run)
		{
			uid.sprite_index = sprite.run;
			//uid.image_xscale = 0.5;
			//uid.image_yscale = 0.5;
		}
	}
	
	attack = function(_target)
	{
		if(uid.sprite_index != sprite.attack)
		{
			uid.sprite_index = sprite.attack;
			//uid.image_xscale = 0.5;
			//uid.image_yscale = 0.5;
		}
		
		var _damage = attack_power;
		var _total_sprite = sprite_get_number(sprite.attack);
        if(uid.image_index >= 0 && uid.image_index <= 0.5)
        {  
            audio_play_sound(attacksound, 120, 0);

        }

		if(uid.image_index >= _total_sprite / 2 && uid.image_index <= _total_sprite / 2 + 0.5)
		{
			_target.unit_data.current_health -= _damage;
		}		
	}
	
	death = function()
	{
		if(uid.sprite_index != sprite.death)
		{
			uid.sprite_index = sprite.death;
			//uid.image_xscale = 0.5;
			//uid.image_yscale = 0.5;
		}
		if(uid.image_index >= uid.image_number - 0.5)
		{
            return true;
		}
        return false;
	}

	target_detect = function() 
	{
		var _inst = collision_circle(uid.x, uid.y, detect_radius, obj_enemy, false, false);
		return _inst;	
	}
	
	target_attack = function()
	{
		var _inst = collision_circle(uid.x, uid.y, attack_radius, obj_enemy, false, false);
		return _inst;
	}
}

function UnitXeno(_id) : 
		Unit(_id) constructor
{
	sprite = 
	{
		idle	: spr_xeno_idle,
		run		: spr_xeno_run,
		attack	: spr_xeno_attack,
		death	: spr_xeno_death
	}

attacksound = sfx_lightsaber_update;
	
	uid				= _id;
	max_health		= 85;
	move_speed		= 1.2;
	attack_power	= 8;
	attack_radius	= 6;
	detect_radius	= 210;
	unit_type		= "Ranger";
	current_health	= max_health;
}

function UnitMiner(_id) :
		Unit(_id) constructor
{
	sprite = 
	{
		idle	: spr_miner_idle,
		run		: spr_miner_run,
		attack	: spr_miner_attack,
		death	: spr_miner_death
	}
	
	uid				= _id;
	max_health		= 90;
	move_speed		= 1.2;
	attack_power	  = 10;
	attack_radius	= 3;
	detect_radius	= 500;
	unit_type		= "Ranger";
	current_health	= max_health;

    current_gold     = 0;

    attack = function(_target)
    {
        if(uid.sprite_index != sprite.attack)
        {
            uid.sprite_index = sprite.attack;
            //uid.image_xscale = 0.5;
            //uid.image_yscale = 0.5;
        }
        
        if(current_gold >= 100)
        {
            uid.state = STATE.IDLE;
        }
        
        var _damage = attack_power;
        var _total_sprite = sprite_get_number(sprite.attack);

        if(uid.image_index >= _total_sprite / 2 && uid.image_index <= _total_sprite / 2 + 0.2)
        {
            current_gold += _damage;
        }
    }

	target_detect = function()
	{	
		var _inst = collision_circle(uid.x, uid.y, detect_radius, obj_goldmine, false, false);
		return _inst; 
	}	

    target_attack = function()
    {
        var _inst = collision_circle(uid.x, uid.y, attack_radius, obj_goldmine, false, false);
        return _inst;
    }
}

function UnitCosmo(_id) :
		Unit(_id) constructor
{
	sprite = 
	{
		idle	: spr_cosmo_idle,
		run		: spr_cosmo_run,
		attack	: spr_cosmo_attack,
		death	: noone
	}

attacksound = sfx_menembak;
	
	uid				= _id;
	max_health    	= 70;
	move_speed	    = 1.2;
	attack_power     = 5;
	attack_radius    = 200;
	detect_radius	= 400;
	unit_type		= "Ranger";
	current_health	= max_health;
}

function UnitHandra(_id) :
		Unit(_id) constructor
{
	sprite = 
	{
		idle	: spr_handra_idle,
		run		: spr_handra_run,
		attack	: spr_handra_attack,
		death	: spr_handra_death
	}
	
	uid				= _id;
	max_health		= 140;
	move_speed		= 1;
	attack_power	= 10;
	attack_radius	= 6;
	detect_radius	= 210;
	unit_type		= "Alien";
	current_health	= max_health;
}

function UnitGravax(_id) :
    Unit(_id) constructor
    {
        sprite =
        {
            idle	: spr_gravax_idle,
            run		: spr_gravax_run,
            attack	: spr_gravax_attack,
            death	: spr_gravax_death
    }
    
    uid				= _id;
    max_health		= 90;
    move_speed		= 1;
    attack_power	   = 8;
    attack_radius	= 6;
    detect_radius	= 210;
    unit_type		= "Alien";
    current_health	= max_health;
}

function UnitMucusar(_id) :
		Unit(_id) constructor
{
	sprite = 
	{
		idle	: spr_mucusar_idle,
		run		: spr_mucusar_run,
		attack	: spr_mucusar_attack,
		death	: spr_mucusar_death
	}
	
	uid				= _id;
	max_health		= 60;
	move_speed		= 1.2;
	attack_power	    = 5;
	attack_radius	= 100;
	detect_radius	= 400;
	unit_type		= "Alien";
	current_health	= max_health;
}
