/// @description Attack State
if (distance_to_object(obj_player) > attack_range)
{
	image_speed = 1;
	state_ = crawler_states.walk_;
	exit;
}

if (!instance_exists(obj_player))
{
	state_ = crawler_states.idle_;
}

if (instance_exists(obj_player))
{
	var facePlayer = (obj_player.x - x);
	image_xscale = sign(facePlayer);
}


sprite_index = spr_crawler;

if (alarm[0] <= 0)
{
	image_speed = 1;
	if (image_index > image_number -1)
	{
		image_speed = 0;
		var fireOriginY = y - 40;
		var fireOriginX = x + (30 * sign(image_xscale));
		var bDir = point_direction(fireOriginX, fireOriginY, obj_player.x, obj_player.y);
		with (instance_create_layer(fireOriginX, fireOriginY, "Bullets", obj_enemy_bullet))
		{						
			image_alpha = 0.9;	
			speed = other.bullet_speed;
			direction = bDir;
			image_angle = bDir;
			damage = irandom_range(5, 10);
		}
		var tired = 1;
		image_blend = c_white;						
		if (bullet_counter >= max_number_of_bullets)
		{
			tired = 5;
			bullet_counter = 0;
			image_blend = c_red;
		}
		alarm[0] = bullet_cooldown * tired;
		alarm[1] = bullet_cooldown * tired;
		audio_play_sound(snd_laser, 11, false);
		bullet_counter += 1;
	}
}

if (alarm[1] > 0 && false)
{
	image_blend = make_colour_hsv(255, 255, random(255));
}