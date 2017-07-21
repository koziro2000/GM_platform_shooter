with (instance_create_layer(x, y, "Bullets", obj_enemy_bullet_destroy))
{
	image_xscale = sign(other.speed);
	image_angle = other.image_angle;
}