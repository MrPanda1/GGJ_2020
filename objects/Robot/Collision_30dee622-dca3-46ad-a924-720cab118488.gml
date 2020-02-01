/// @description Insert description here
// You can write your code in this editor

if (!other.isPickedUp && robotState == 0)
{
	sprite_assign(Robot_Sprite, RobotWithLeg_Sprite);
	robotState++;
	other.doDestroy = true;
}