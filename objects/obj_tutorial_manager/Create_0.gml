/// @description Insert description here
// You can write your code in this editor

tutorialstep = ["Latih miner untuk mendapatkan sumberdaya", 
"Latih pasukan pedang", "Lihat kondisi pasukan musuh dengan menekan D, mundur dengan A", 
"Dorong untuk menyerang base musuh", "Semoga berhasil"];

tutorial = 0;

with(obj_base_alien)
{
unit_data.current_health = 100;
time = 2000 * game_get_speed(gamespeed_fps);
}