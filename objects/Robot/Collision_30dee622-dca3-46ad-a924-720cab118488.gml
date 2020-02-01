/// @description Insert description here
// You can write your code in this editor

//Places leg on robot
if (!other.isPickedUp && global.gameState == 0)
{
	sprite_assign(Robot_Sprite, RobotWithLeg_Sprite);
	global.gameState++;
	other.doDestroy = true;
}