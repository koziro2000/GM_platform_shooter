/// @description initialize enemy
hsp = 0;
hsp_push = 0;
vsp = 0;
vsp_push = 0;
moveSpeed = 1;
eHealth = 4;
bullet_speed = 5;

bullet_cooldown = room_speed /2;
alarm[0]=bullet_cooldown;

// States
MOVEMENT_ = 0;
ATTACK_ = 1;
HIT_ = 2;

state_ = MOVEMENT_;

