/// @description Insert description here
// You can write your code in this editor

var xCheck = mouse_x > x - buttonWidth && mouse_x < x + buttonWidth;
var yCheck = mouse_y > y - buttonHeight && mouse_y < y + buttonHeight;

if(xCheck && yCheck)
{
	room_goto(goToRoom);
}