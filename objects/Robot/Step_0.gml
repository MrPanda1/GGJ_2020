/// @description Insert description here
// You can write your code in this editor

//Robot walks toward box
if(global.gameState == 1)
{
	if(roomBox != noone && y > roomBox.y)
	{
		y -= robotSpeed;
	}
	else if(roomBox != noone && x > roomBox.x + roomBox.sprite_width / 2 + sprite_width / 2)
	{
		x -= robotSpeed;	
	}
	else if(global.sectionComplete[0])
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
//Moves robot to trash
else if(global.gameState == 5)
{
	if(roomTrash != noone && y < roomTrash.y)
	{
		y += robotSpeed;
	}
	else if(roomTrash != noone && x > roomTrash.x + roomTrash.sprite_width / 2 + sprite_width / 2)
	{
		x -= robotSpeed;	
	}
	else if(instance_number(RobotLeftArm) == 0)
	{
		instance_create_layer(roomTrash.x - roomTrash.sprite_width - roomTrash.sprite_width, roomTrash.y, "Instances", RobotLeftArm);
	}
}
//Moves robot to thruster once password is entered
else if(global.gameState == 7)
{
	if(roomThrust != noone && y > roomThrust.y)
	{
		y -= robotSpeed;
	}
	else if(roomThrust != noone && x < roomThrust.x)
	{
		x += robotSpeed;	
	}
}