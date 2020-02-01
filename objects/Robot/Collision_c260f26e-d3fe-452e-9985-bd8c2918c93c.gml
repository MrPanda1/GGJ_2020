/// @description Insert description here
// You can write your code in this editor

if !other.isPickedUp
{
	sprite_assign(Robot_Sprite, RobotWithLeg_Sprite);
	other.doDestroy = true;
}