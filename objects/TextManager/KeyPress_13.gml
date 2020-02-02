/// @description Insert description here
// You can write your code in this editor

if(global.activateInput)
{
	//Replace this text
	if(global.gameState == 4 && global.currentText == "fuck")
	{
		global.gameState = 5;
		room_goto_previous();
	}
	else if(global.gameState == 6 && global.currentText == "fuckfuck")
	{
		global.gameState = 7;
		room_goto_previous();
	}
	
	global.currentText = "";
}