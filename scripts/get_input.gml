//get_input()
/*
keys = "retro"
right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)
attack_key = keyboard_check_pressed(ord("Z"))
attack_key_press = keyboard_check(ord("Z"))
attack_key_release = keyboard_check_released(ord("Z"))
interact_key = keyboard_check_pressed(ord("x"))
*/

keys = "standard"

right_key = keyboard_check(ord("D"))
left_key = keyboard_check(ord("A"))
up_key = keyboard_check(ord("W"))
down_key = keyboard_check(ord("S"))

attack_key = mouse_check_button_pressed(mb_left)
attack_key_press = mouse_check_button(mb_left)
attack_key_release = mouse_check_button_released(mb_left)

interact_key = keyboard_check_pressed(ord("E"))
shift_skill_key = keyboard_check(vk_shift)

//Check for Gamepad input 
if (gamepad_is_connected(0))
{
right_key = gamepad_axis_value(0, gp_axislh) >= 0.5
left_key = gamepad_axis_value(0, gp_axislh) <= -0.5
down_key = gamepad_axis_value(0, gp_axislv) >= 0.5
up_key = gamepad_axis_value(0, gp_axislv) <= -0.5
attack_key = gamepad_button_check_pressed(0,gp_stickr)
attack_key_press = gamepad_button_check(0,gp_stickr)
attack_key_release = gamepad_button_check_released(0,gp_stickr)
interact_key = gamepad_button_check_pressed(0,gp_face3)
shift_skill_key = gamepad_button_check(0,gp_shoulderlb)

keys = "gamepad"
}

