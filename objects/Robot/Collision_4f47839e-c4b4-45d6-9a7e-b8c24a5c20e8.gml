/// @description Insert description here
// You can write your code in this editor

//Places leg on robot
if (!other.isPickedUp && global.gameState == other.partState - 1)
{
	
	if(!(global.gameState == 0 && instance_number(pUhhPhase1) > 1))
	{
		if(other.replaceSprite != noone)
		{
			sprite_assign(sprite_index, other.replaceSprite);
		}
	
		global.gameState = other.partState;
	}
	
	if(global.gameState == 4)
	{
		var newJournal = instance_create_layer(x - sprite_width / 2 - Journal.sprite_width - 25, y, "Instances", Journal);
		newJournal.journalText = "Idk, put whatever hint you guys want here";
	}
	
	//Drops note after placing left arm
	if(global.gameState == 6)
	{
		var newJournal = instance_create_layer(x + sprite_width / 2 + Journal.sprite_width + 25, y, "Instances", Journal);
		newJournal.journalText = "I am dying someone call for help";
	}
	
	other.doDestroy = true;
}