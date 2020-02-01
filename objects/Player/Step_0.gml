/// @description Insert description here
// You can write your code in this editor

var hin = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vin = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var xmov = playerSpeed*hin;
var ymov = playerSpeed*vin;

if !place_meeting(x+xmov,y,pWall)
{
	x += xmov;
}

if !place_meeting(x,y+ymov,pWall)
{
	y += ymov;
}