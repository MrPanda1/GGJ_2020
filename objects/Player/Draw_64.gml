/// @description Insert description here
// You can write your code in this editor

//Displays journal text if one has been selected/picked up
if(currentJournal != noone)
{
	draw_set_colour(c_olive);
	draw_roundrect(100, 100, window_get_width() - 100, window_get_height() - 100, false);
	draw_set_colour(c_black);
	draw_text(125, 125, currentJournal.journalText);
}