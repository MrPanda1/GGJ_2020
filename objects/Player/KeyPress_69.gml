/// @description Insert description here
// You can write your code in this editor

//Reference to the currently touching journal
var tmpJournal = instance_place(x, y, Journal);
//Reference to the currently touching robot part
var tmpPart = instance_place(x, y, pRobotPart);


//Opens the journal
if(tmpJournal != noone)
{
	/*if(currentJournal != noone)
	{
		currentJournal.doDestroy = true;
	}
	
	currentJournal = instance_create_depth(window_get_width() / 2, window_get_height() / 2, -1000, TextBox);
	currentJournal.myJournal = tmpJournal;
	currentJournal.playerRef = id;*/
	
	global.currentText = tmpJournal.journalText;
	room = InterfaceRoom;
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

//Creates input box from robot
if((global.gameState == 4 || global.gameState == 6) && place_meeting(x, y, Robot))
{
	global.currentText = "";
	global.activateInput = true;
	room = InterfaceRoom;
}