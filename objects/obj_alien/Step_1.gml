if(unit_data.current_health <= 0)
{
	unit_data.death();
	instance_destroy();
}