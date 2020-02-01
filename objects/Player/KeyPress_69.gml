/// @description Insert description here
// You can write your code in this editor

//Reference to the currently touching journal
var tmpJournal = instance_place(x, y, Journal);
//Reference to the currently touching robot part
var tmpPart = instance_place(x, y, pRobotPart);


//Opens the journal
if(tmpJournal != noone && currentJournal == noone)
{
	currentJournal = tmpJournal;
}
//Closes the journal
else if(currentJournal != noone)
{
	currentJournal = noone;
}
//Picks up the part
else if(tmpPart != noone && currentPiece == noone)
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