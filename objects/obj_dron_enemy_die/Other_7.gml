var rand = irandom_range(1,10) mod 2;
if (rand == 1) instance_create_layer(x, y, "Player", obj_damage_plus);
else  instance_create_layer(x, y, "Player", obj_damage_plus);
instance_destroy();
