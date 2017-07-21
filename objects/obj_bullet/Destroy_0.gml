with (instance_create_layer(x, y, "Bullets", obj_bullet_destroy))
{
	image_xscale = sign(other.speed);
}