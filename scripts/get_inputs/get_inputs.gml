// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_inputs(){
		up = keyboard_check(ord("W"))
		right = keyboard_check(ord("D"))
		left = keyboard_check(ord("A"))
		down = keyboard_check(ord("S"))
		dodge_hold = keyboard_check(vk_space)
		dodge_press = keyboard_check_pressed(vk_space)
		attack_hold = mouse_check_button(mb_left)
		attack_press = mouse_check_button_pressed(mb_left)
		power_press = mouse_check_button_pressed(mb_right)
		power_hold = mouse_check_button_pressed(mb_right)
		pickup_pressed = keyboard_check_pressed(ord("E"))
		dpad_down_pressed = false
		dpad_left_pressed = false
		dpad_right_pressed = keyboard_check_pressed(ord("C"))
		dpad_up_pressed = keyboard_check_pressed(ord("Z"))
		arrow_hold = keyboard_check(vk_control)
		aim_angle = point_direction(x,y,mouse_x, mouse_y)
		pause_press = keyboard_check_pressed(vk_escape)
		if gamepad_is_connected(0) 
		{
			pause_press = pause_press || gamepad_button_check_pressed(0,gp_start)
			down = down || gamepad_axis_value(0, gp_axislv) > 0.25
			up = up || gamepad_axis_value(0, gp_axislv) < -0.25
			left = left || gamepad_axis_value(0, gp_axislh) < -0.25
			right = right || gamepad_axis_value(0, gp_axislh) > 0.25
			var aim_x = gamepad_axis_value(0, gp_axislh)
			var aim_y = gamepad_axis_value(0,gp_axislv)
			aim_angle = point_direction(x,y, x + aim_x, y + aim_y)
			attack_press = attack_press || gamepad_button_check_pressed(0, gp_face3)
			attack_hold = attack_hold || gamepad_button_check(0, gp_face3)
			power_press = power_press || gamepad_button_check_pressed(0, gp_face4)
			power_hold = power_hold || gamepad_button_check(0, gp_face4)
			dodge_press = dodge_press || gamepad_button_check_pressed(0,gp_face2)
			dodge_hold = dodge_hold || gamepad_button_check(0, gp_face2)
			dpad_up_pressed = dpad_up_pressed || gamepad_button_check_pressed(0, gp_padu)
			dpad_down_pressed = dpad_down_pressed || gamepad_button_check_pressed(0, gp_padd)
			dpad_left_pressed = dpad_left_pressed || gamepad_button_check_pressed(0, gp_padl)
			dpad_right_pressed = dpad_right_pressed || gamepad_button_check_pressed(0, gp_padr)
			pickup_pressed = pickup_pressed || gamepad_button_check_pressed(0, gp_face1)
			arrow_hold = arrow_hold || gamepad_button_check(0, gp_shoulderrb)
		}
}