/// @description Attack State
/// @description Attack State
if (distance_to_object(obj_player) >= attack_range)
{
	state_ = triBossStates.walk_;
}

if (alarm[0] <= 0)
{
	var fireOriginY = y - sprite_height/3;
	var fireOriginX = (x - sprite_width/3) * sign(hsp);
	var bDir = point_direction(x, fireOriginY, obj_player.x, obj_player.y);
	with (instance_create_layer(x, fireOriginY, "Bullets", obj_enemy_bullet))
	{
		image_xscale *= 2;
		image_yscale *= 2;
		
	   speed = other.bullet_speed;
	   direction = bDir;
	   image_angle = bDir;
	}
	alarm[0] = bullet_cooldown;
	audio_play_sound(snd_laser, 11, false);
}