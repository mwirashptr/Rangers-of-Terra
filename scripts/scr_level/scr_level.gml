function Level() constructor 
{
	timer_pre_attack	= 0;
	timer_on_attack	 = 0;
	
	alien_to_spawn 	 = [];
	
}

function Level1() : Level() constructor 
{
	timer_pre_attack	= 120;
	timer_on_attack	 = 240;

	alien_to_spawn	  = [];
}

function Level2() : Level() constructor
{
	timer_pre_attack	= 60;
	timer_on_attack	 = 0;

	alien_to_spawn	  = [];
}