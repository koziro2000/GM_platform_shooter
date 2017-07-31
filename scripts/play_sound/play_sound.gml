///playSound (sound_name, repeat_num, loop_num)
sound_name = argument0;
repeat_num = argument1;
loop_num = argument2;

repeat(repeat_num)
{
	audio_sound_pitch(sound_name, random_range(0.8, 1.2));
	audio_play_sound(sound_name, 0, loop_num);
}