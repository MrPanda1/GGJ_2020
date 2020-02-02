/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_black);
draw_set_halign(fa_center);
if(global.currentInput != noone)
{
	draw_text(x, y, global.currentInput);
}