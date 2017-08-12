scr_get_user_input();

if (key_left || key_right || key_jump)
{
	state_ = fighter_state.walk_;
}

event_user(state_);