/// @description Insert description here
// You can write your code in this editor
shoot_speed = 10;
shoot_cooldown = 0;
recoil = 0;
number_of_bullets_per_shot = 0;
max_number_of_bullets_per_shot = 1;

if(instance_exists(obj_player))
{
	depth = obj_player.depth -1;
}