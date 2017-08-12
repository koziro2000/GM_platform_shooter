/// @description Attack State
if (distance_to_object(obj_player) > attack_range)
{
	state_ = triBossStates.walk_;
	exit;
}

if (!instance_exists(obj_player))
{
	state_ = triBossStates.idle_;
}

sprite_index = spr_enemyTriBossAttack;

if (alarm[0] <= 0)
{
	image_speed = 1;
	if (image_index > image_number -1)
	{
		image_speed = 0;
		var fireOriginY = y - sprite_height/3;
		var fireOriginX = (x - sprite_width/3) * sign(hsp);
		var bDir = point_direction(x, fireOriginY, obj_player.x, obj_player.y);
		with (instance_create_layer(x, fireOriginY, "Bullets", obj_enemy_bullet))
		{
			
			sprite_index = sprBossWeapon;
			image_alpha = 0.9;	
			speed = other.bullet_speed;
			direction = bDir;
			image_angle = bDir;
			damage = irandom_range(20, 30);
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