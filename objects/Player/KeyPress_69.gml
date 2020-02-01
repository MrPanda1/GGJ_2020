/// @description Insert description here
// You can write your code in this editor

//Reference to the currently touching journal
var tmpPart = instance_place(x, y, Journal);
//Opens the journal
if(tmpPart != noone && currentJournal == noone)
{
	currentJournal = tmpPart;
}
//Closes the journal
else if(currentJournal != noone)
{
	currentJournal = noone;
}