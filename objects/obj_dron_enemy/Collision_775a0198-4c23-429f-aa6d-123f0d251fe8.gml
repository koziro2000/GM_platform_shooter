/// @description Soft collide
var dir = point_direction(other.x, other.y, x, y);
hsp_push = lengthdir_x(moveSpeed, dir);
vsp_push = lengthdir_y(moveSpeed, dir);
moveObj_push();