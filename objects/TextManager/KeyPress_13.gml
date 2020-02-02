/// @description Insert description here
// You can write your code in this editor

if(global.activateInput)
{
	//Replace this text
	if(global.gameState == 4 && global.currentText == "fuck")
	{
		global.gameState = 5;
		room = room0;
	}
	else if(global.gameState == 6 && global.currentText == "fuckfuck")
	{
		global.gameState = 7;
		room = room0;
	}
	
	global.currentText = "";
}