/// @description Insert description here
// You can write your code in this editor

var hin = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vin = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//This is for sprite/animation management -Adam
if vin != 0 
{
	if(vin > 0)	sprite_index = playerDown;
			else sprite_index = playerUp;
	image_speed = 1;
	if(!walking) { image_index = 1; walking = true; }
}

//This keeps track of the last horizontal direction inputted for placing robot parts
if hin != 0
{
	lastHorDir = hin;
	
	//This is for sprite/animation management -Adam
	if(hin > 0)	sprite_index = playerRight;
			else sprite_index = playerLeft;
	image_speed = 1;
	if(!walking) { image_index = 1; walking = true; }
}

//This is for sprite/animation management -Adam
if(vin == 0 && hin == 0)
{
	image_speed = 0;
	image_index = 0;
	walking = false;
}

var xmov = playerSpeed*hin;
var ymov = playerSpeed*vin;

if (!place_meeting(x+xmov,y,pWall))
{
	x += xmov;
}

if (!place_meeting(x,y+ymov,pWall))
{
	y += ymov;
}

//This makes the currently help robot part hover above the player
if currentPiece != noone
{
	currentPiece.x = x;
	currentPiece.y = y - currentPiece.sprite_height;
}