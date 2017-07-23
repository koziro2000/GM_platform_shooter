with(obj_gun)
{
	if !place_meeting(x, y + 1, obj_wall)
	{
		gravity = 0.01;
	}
	else
	{
	   gravity = 0;
	   speed = 0;
	}
}
