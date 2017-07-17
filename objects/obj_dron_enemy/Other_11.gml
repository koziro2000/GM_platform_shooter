/// @description Attack State
if (distance_to_object(obj_player) >= 48)
{
	state_ = MOVEMENT_;
}

if (alarm[0] <= 0)
{
	var bDir = point_direction(x, y, obj_player.x, obj_player.y);
	var inst = instance_create_layer(x, y, "Bullets", obj_enemy_bullet);
	with (inst)
	{
	   speed = other.bullet_speed * other.image_xscale;
	   direction = bDir;
	}
	alarm[0] = bullet_cooldown;
}