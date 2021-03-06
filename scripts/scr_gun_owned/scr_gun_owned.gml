if !instance_exists(obj_player) exit;
scr_get_user_input();
image_xscale = obj_player.image_xscale;	
x = obj_player.x + (5 * obj_player.image_xscale);
y = obj_player.y + 5;
	
shoot_cooldown = max(0, shoot_cooldown -1);
recoil = max(0, recoil-1);
var recoil_direction = point_direction(obj_player.x, obj_player.y, x, y);

if (key_fire) && (shoot_cooldown == 0)
{
	shoot_cooldown = 5;
	recoil = 5;

	with (instance_create_layer(x + (image_xscale * 10), y, "Bullets", obj_bullet))
	{
		damage = other.damage;
		depth = other.depth -1;
		speed = other.shoot_speed * other.image_xscale;	   
	}
	play_sound(snd_laser, 1, false);

	if (number_of_bullets_per_shot > 1)
	{
		with (instance_create_layer(x + (image_xscale * 10), y, "Bullets", obj_bullet))
		{
			damage = other.damage;
			speed = other.shoot_speed * other.image_xscale;	   
			depth = other.depth -1;
			direction = random_range(10, 15);
		}
		play_sound(snd_laser, 1, false);

		with (instance_create_layer(x + (image_xscale * 10), y, "Bullets", obj_bullet))
		{
			damage = other.damage;	
			speed = other.shoot_speed * other.image_xscale;	   
			depth = other.depth -1;
			direction = random_range(360-10, 360 - 15);
		}
		play_sound(snd_laser, 1, false);
	}
}

x = x - lengthdir_x(recoil, recoil_direction);
