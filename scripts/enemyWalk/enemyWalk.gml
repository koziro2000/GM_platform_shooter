//Horizontal Collision
if (place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, obj_wall))
{
	vsp = 0;
}

y += vsp;