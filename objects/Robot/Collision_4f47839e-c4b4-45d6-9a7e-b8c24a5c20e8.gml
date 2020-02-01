/// @description Insert description here
// You can write your code in this editor

//Places leg on robot
if (!other.isPickedUp && global.gameState == other.partState - 1)
{
	if(other.replaceSprite != noone)
	{
		sprite_assign(sprite_index, other.replaceSprite);
	}
	
	global.gameState++;
	other.doDestroy = true;
}