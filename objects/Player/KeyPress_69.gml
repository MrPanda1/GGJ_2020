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

/*//Creates input box from robot
if((global.gameState == 4 || global.gameState == 6) && place_meeting(x, y, Robot))
{
	global.currentText = "";
	global.activateInput = true;
	room = InterfaceRoom;
}*/

if(global.gameState == 1)
{
	show_message(ds_map_find_value(global.correctPaths, "rArmPower"));
	show_message(ds_map_find_value(global.correctValues, "rArmPower"));
}

//Checks player completed radio frequency code
if(global.gameState == 4 && place_meeting(x, y, Robot) && global.sectionComplete[1])
{
	global.gameState = 5;
}
//This is for testing, get rid of later
else if(global.gameState == 4)
{
	show_message(ds_map_find_value(global.correctPaths, "RadioFreq"));
	show_message(ds_map_find_value(global.correctValues, "RadioFreq"));
}

//Checks player completed password code
if(global.gameState == 6 && place_meeting(x, y, Robot) && global.sectionComplete[2])
{
	global.gameState = 7;
}
else if(global.gameState == 6)
{
	show_message(ds_map_find_value(global.correctPaths, "password"));
	show_message(ds_map_find_value(global.correctValues, "password"));
}

//Checks player completed acceleration code
if(global.gameState == 9 && place_meeting(x, y, Robot) && global.sectionComplete[3])
{
	global.gameState = 10;
}
else if(global.gameState == 9)
{
	show_message(ds_map_find_value(global.correctPaths, "acceleration"));
	show_message(ds_map_find_value(global.correctValues, "acceleration"));
}