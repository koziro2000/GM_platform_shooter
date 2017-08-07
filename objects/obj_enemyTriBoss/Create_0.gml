hsp = 0;
vsp = 0;
moveSpeed = 3;
attack_range = 270;
alert_range = 300;
bullet_cooldown = 100;
bullet_speed = 3;
eHealth = 1000;
eMaxHealth = 1000;

enum triBossStates
{
	idle_,
	walk_,
	attack_
}

state_ = triBossStates.idle_;

bullet_counter = 0;
max_number_of_bullets = 10;