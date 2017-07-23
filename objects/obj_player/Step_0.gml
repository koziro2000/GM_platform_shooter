// Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

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
if (myHealth <= 0)
{
	instance_destroy();
}