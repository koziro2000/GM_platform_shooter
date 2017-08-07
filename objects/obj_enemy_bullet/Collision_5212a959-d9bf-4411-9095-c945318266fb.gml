///@description reduce player's health. Increase infraction rate.
other.myHealth -= damage;
global.infaction_rate -= 100;


if (damage > 20)
{
	instance_create_depth(x, y, 0, obj_shake_view);
}
instance_destroy();