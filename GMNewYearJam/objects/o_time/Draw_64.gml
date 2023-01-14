//Local Vars to hold hours minutes calculations for display
var hours = floor(global.minutes/60);
var mins  = global.minutes mod 60;

//Custom Function that formats time in a 00:00 format 
//Draws Day 
format_time(hours,mins);

