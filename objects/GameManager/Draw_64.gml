/// @description Insert description here
// You can write your code in this editor

if(global.gameState == global.finalGameState)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(window_get_width() / 2, window_get_height() / 2, "GAME OVER");
}

if(global.dataDir != noone)
{
	checkCompletion();
}