/// @description Take Damage
eHealth -= 1;
instance_destroy(other);
state_ = HIT_;

var dir = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(64, dir);
vsp = lengthdir_y(64, dir);