/// @description Insert description here
// You can write your code in this editor

var xCheck = mouse_x > x - sprite_width && mouse_x < x + sprite_width;
var yCheck = mouse_y > y - sprite_height && mouse_y < y + sprite_height;

if(xCheck && yCheck)
{
	room_goto(goToRoom);
}