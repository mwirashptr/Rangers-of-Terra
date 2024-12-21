if(current_cooldown < 0)
{
uninteractable = false;
current_cooldown = cooldown;
}

if(uninteractable != true)
{

if (keyboard_check(ord("1")))
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(90, 155, -1, obj_miner);
with(_inst)
{
unit_data = new UnitMiner(id);
}
uninteractable = true;
}

if (keyboard_check(ord("2")))
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(90, 152, -1, obj_unit_to_spawn);
with(_inst)
{
unit_data = new UnitXeno(id);
}

uninteractable = true;
}

if (keyboard_check(ord("3")))
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(90, 152, -1, obj_unit_to_spawn);
with(_inst)
{
unit_data = new UnitCosmo(id);
}
uninteractable = true;
}

if (keyboard_check(ord("4")))
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(1180, 152, -1, obj_alien);
with(_inst)
{
unit_data = new UnitGravax(id);
}
uninteractable = true;
}

if (keyboard_check(ord("5")))
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(1180, 152, -1, obj_alien);
with(_inst)
{
unit_data = new UnitHandra(id);
}

uninteractable = true;
}

if (keyboard_check(ord("6")))
{
var _random = irandom_range(137, 167);
var _inst = instance_create_depth(1180, 152, -1, obj_alien);
with(_inst)
{
unit_data = new UnitMucusar(id);
}

uninteractable = true;
}

if (keyboard_check(ord("7")))
{
with(obj_unit_to_spawn)
{
state_override = true;
}

with(obj_unit_to_spawn2)
{
state_override = true;
}
uninteractable = true;
}

if (keyboard_check(ord("8")))
{
with(obj_unit_to_spawn)
{
state_override = false;
state = STATE.IDLE;
speed = 0;
}

with(obj_unit_to_spawn2)
{
state_override = false;
state = STATE.IDLE;
speed = 0;
}
uninteractable = true;
}

if (keyboard_check(ord("9")))
{
with(obj_base_alien)
{
if(spawn_active!=true)
{
    spawn_active = true;
}
else {spawn_active = false}
    uninteractable = true;
}
}
}

current_cooldown -= 1;