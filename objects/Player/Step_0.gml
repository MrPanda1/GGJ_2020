/// @description Insert description here
// You can write your code in this editor

var hin = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vin = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//This keeps track of the last horizontal direction inputted for placing robot parts
if hin != 0
{
	lastHorDir = hin;
}

var xmov = playerSpeed*hin;
var ymov = playerSpeed*vin;

if (!place_meeting(x+xmov,y,pWall) && canMove)
{
	x += xmov;
}

if (!place_meeting(x,y+ymov,pWall) && canMove)
{
	y += ymov;
}

//This makes the currently help robot part hover above the player
if currentPiece != noone
{
	currentPiece.x = x;
	currentPiece.y = y - currentPiece.sprite_height;
}