/// @description Insert description here
// You can write your code in this editor

//Reference to the currently touching robot part
var tmpPart = instance_place(x, y, pRobotPart);
//Picks up the part
if(tmpPart != noone && currentPiece == noone)
{
	currentPiece = tmpPart;
	tmpPart.isPickedUp = true;
}
//Places the part down
else if(currentPiece != noone)
{
	currentPiece.y = y;
	
	if lastHorDir < 0
	{
		currentPiece.x = x - currentPiece.sprite_width;
	}
	else
	{
		currentPiece.x = x + sprite_width;
		
	}
	
	currentPiece.isPickedUp = false;
	
	currentPiece = noone;
}