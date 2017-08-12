/// @description Walk State
if (distance_to_object(obj_player) <= attack_range)
{
	state_ = crawler_states.attack_;
	exit;
}


//Horizontal Collision
if (place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x += sign(hsp);
	}
	dir *= -1;	
}

x += hsp * dir;
image_xscale = sign(dir);

//Vertical Collision
if (place_meeting(x, y+vsp, obj_wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;