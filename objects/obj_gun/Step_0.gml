key_fire = 0;

if (instance_exists(obj_player)) 
{ 	
	image_xscale = obj_player.image_xscale;
	
	move_towards_point (obj_player.x + (image_xscale * 20) ,obj_player.y - 20,2);
}

//key_fire = keyboard_check_pressed(ord("Z"));
if ((key_fire) && (alarm[0] <= 0))
{
	var inst;
	inst = instance_create_layer(x, y, "Bullets", obj_bullet);
	with (inst)
	{
	   speed = other.shoot_speed * other.image_xscale;
	}
	alarm[0] = bullet_cooldown;
}

