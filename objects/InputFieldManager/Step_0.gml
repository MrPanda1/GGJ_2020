/// @description Insert description here
// You can write your code in this editor

if(instance_number(InputFieldBox) != 0 && keyboard_check_pressed(vk_anykey) && global.activateInput)
{
	global.currentInput += keyboard_lastchar;
}