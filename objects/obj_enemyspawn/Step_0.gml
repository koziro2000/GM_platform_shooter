image_xscale = min(image_xscale + 0.05, 1);
image_yscale = min(image_yscale + 0.05, 1);

if (image_xscale == 1) instance_change(obj_dron_enemy, true);
