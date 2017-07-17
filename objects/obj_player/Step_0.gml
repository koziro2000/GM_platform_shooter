// Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_fire = keyboard_check_pressed(ord("Z"));
key_mattack = keyboard_check_pressed(ord("X"));

// determine the direction: 1, 0, -1
var move = key_right - key_left;
hsp = move * walksp;
vsp += grv;

if (place_meeting(x, y+1, obj_wall) && key_jump)
{
	vsp = -7;
}

moveObj();

//Animatin
if (!place_meeting(x, y+1, obj_wall))
{
	sprite_index = spr_player_jump;
	image_speed = 0;
	if (sign(vsp)>0)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_player_run;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

if (key_fire)
{	if (alarm[0] <= 0) 
	{
		var inst = instance_create_layer(x, y, "Bullets", obj_bullet);
		with (inst)
		{
		   speed = other.shoot_speed * other.image_xscale;
		}
		alarm[0] = bullet_cooldown;
	}
}

if (key_mattack)
{
	image_speed = 1;
	show_debug_message("Punch!")
	sprite_index = spr_player_mattack;
}

if (myHealth <= 0)
{
	game_restart();
}