hsp = 0;
vsp = 0;
grv = 0.4; //this defines how long in the air.
walksp = 4;
shoot_speed = 5;
shoot_speed_duration = 10;
dir = 0;

myHealth = 10;

var gunInst = instance_create_depth(x, y, 0, obj_gun);
gunInst.owner = id;

bullet_cooldown = room_speed/4;
alarm[0] = bullet_cooldown;