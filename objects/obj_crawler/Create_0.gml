hsp = 3;
vsp = 3;
moveSpeed = 3;
attack_range = 100;
alert_range = 110;
bullet_cooldown = 100;
bullet_speed = 3;
eHealth = 1000;
eMaxHealth = 1000;

enum crawler_states
{
	idle_,
	walk_,
	attack_
}

state_ = crawler_states.walk_;

bullet_counter = 0;
max_number_of_bullets = 25;

dir = -1;