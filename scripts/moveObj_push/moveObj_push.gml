//Horizontal Collision
if (place_meeting(x+hsp_push, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp_push), y, obj_wall))
	{
		x += sign(hsp_push);
	}
	hsp_push = 0;
}

x += hsp_push;

//Vertical Collision
if (place_meeting(x, y+vsp_push, obj_wall))
{
	while(!place_meeting(x, y+sign(vsp_push), obj_wall))
	{
		y += sign(vsp_push);
	}
	vsp_push = 0;
}

y += vsp_push;