/// @description Insert description here
// You can write your code in this editor

//Enters door when in correct game state
if(global.gameState == global.finalGameState && room_next(room) != -1)
{
   room_goto_next();
}