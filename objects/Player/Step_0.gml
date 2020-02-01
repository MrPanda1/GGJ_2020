/// @description Insert description here
// You can write your code in this editor

var hin = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vin = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += playerSpeed*hin;
y += playerSpeed*vin;