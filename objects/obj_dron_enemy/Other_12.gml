/// @description HIT state
moveObj();

var dir = point_direction(x, y, obj_player.x, obj_player.y);
hsp = lengthdir_x(0.1, dir);
vsp = lengthdir_y(0.1, dir);

state_ = MOVEMENT_;