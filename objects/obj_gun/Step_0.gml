key_fire = keyboard_check_pressed(ord("Z"));

if (instance_exists(obj_player))
{ 	
	image_xscale = obj_player.image_xscale;	
	x = obj_player.x + (5 * obj_player.image_xscale);
	y = obj_player.y + 5;
} 
else
{
	exit;
}

//key_fire = keyboard_check_pressed(ord("Z"));
shoot_cooldown = max(0, shoot_cooldown -1);
recoil = max(0, recoil-1);
var recoil_direction = point_direction(obj_player.x, obj_player.y, x, y);

if (key_fire) && (shoot_cooldown == 0)
{
	shoot_cooldown = 5;
	recoil = 5;
	with (instance_create_layer(x + (image_xscale * 10), y, "Bullets", obj_bullet))
	{
	   speed = other.shoot_speed * other.image_xscale;	   
	}
	audio_play_sound(snd_laser, 10, false);
}

x = x - lengthdir_x(recoil, recoil_direction);

