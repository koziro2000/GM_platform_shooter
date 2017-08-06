hsp = 0;
vsp = 0;
moveSpeed = 3;
attack_range = 100;
alert_range = 250;
bullet_cooldown = 30;
bullet_speed = 20;
eHealth = 1000;

enum triBossStates
{
	idle_,
	walk_,
	attack_
}

state_ = triBossStates.idle_;