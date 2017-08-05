scr_get_user_input();

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

if (key_down)
{
	if (myCurrentGunId < 0)
	{
		var gunId = instance_place(x, y, obj_gun_common);
		if(gunId > 0)
		{
			show_debug_message("gunId is " + string(gunId));
			show_debug_message("myCurrentGunId is " + string(myCurrentGunId));
			myCurrentGunId = gunId;
			gunId.state = obj_gun_common.states.owned;
		}
	}
	
}
if (key_throw)
{
	if (myCurrentGunId > 0)
	{
		myCurrentGunId.state = obj_gun_common.states.normal;
		myCurrentGunId = -1;
	}
}