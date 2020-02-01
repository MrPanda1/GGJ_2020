/// @description Insert description here
// You can write your code in this editor

//Robot walks toward box
if(global.gameState == 1)
{
	if(roomBox != noone && y < roomBox.y)
	{
		y += robotSpeed;
	}
	else if(roomBox != noone && x < roomBox.x - roomBox.sprite_width / 2 - sprite_width / 2)
	{
		x += robotSpeed;	
	}
	else
	{
		//Temp solution to proceed to next event
		global.gameState = 2;
	}
}
//Robot breaks box
else if(global.gameState == 2)
{
	instance_create_layer(roomBox.x, roomBox.y, "Instances", RobotAntenna);
	instance_destroy(roomBox);
	
	global.gameState = 3;
}