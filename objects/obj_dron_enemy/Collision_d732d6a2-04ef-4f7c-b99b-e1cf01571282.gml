/// @description Take Damage
eHealth -= other.damage;
instance_destroy(other);
state_ = HIT_;